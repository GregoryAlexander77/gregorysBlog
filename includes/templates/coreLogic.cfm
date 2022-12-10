	<!--- Note: this is already put inside of a cfsilent tag on the index.cfm page --->
		
	<!--- //**************************************************************************************************************
			Create custom security token keys
	//*************************************************************************************************************** --->
		
	<!--- Use to delete the cookies for testing.
	<cfset exists= structdelete(session, 'encryptionKey', true)/>
	<cfset exists= structdelete(session, 'serviceKey', true)/>
	--->

	<!--- See if the encryptionKey and the serviceKey have been created in the session scope. If they don't exist, create them. --->
	<cfif not isDefined("session.encryptionKey") or not isDefined("session.serviceKey")>
		<!--- Create unique token keys --->
		<cfinvoke component="#ProxyControllerObj#" method="createTokenKeys" returnvariable="createTokenKeys" />
		<!--- Store the value in session cookies. --->
		<cfset session.encryptionKey = createTokenKeys.encryptionKey>
		<cfset session.serviceKey = createTokenKeys.serviceKey>
	</cfif>

	<!--- //**************************************************************************************************************
			Determine what to get based upon the URL and set parameters to get the articles
	//********************************************************************************************************************

	Note: in order to debug- remove the cfsilent that wraps around this and the pageSettings.cfm template on the index.cfm page.
	--->
		
	<cfif postFound>
		
		<cfswitch expression="#getPageMode()#">

			<!--- //**********************************************************************************************************
				Get the post
			//************************************************************************************************************--->
			<cfcase value = "post">

				<!--- When in post mode, there will only be one element in the getPost array. --->
				<!--- If the blog is in entry or alias mode, set the URL mode to entry --->
				<cfset url.mode = "entry">
				<cfset url.postId = getPost[1]["PostId"]>
				<!--- Set the postId. I don't want to use the array syntax every time I use this variable in the code. --->
				<cfset postId = getPost[1]["PostId"]>
				<cfset title = getPost[1]["Title"]>

				<!--- ********************************************************************************************************
				Increment the view count if the user has not seen this post. 
				********************************************************************************************************  --->

				<!--- Create a new structure to determine what pages have already been viewed in this session. 
				<cfset logViewStruct = structNew()>--->

				<!--- Populate the struct 
				<cfset logViewStruct.postId = postId>
				<cfset logViewStruct.title = title>
				<cfset logViewStruct.entrymode = true>--->

				<!--- Preset the dontLog --->
				<cfset dontLog = false>
				<cfif getPageMode() neq "alias" or structKeyExists(session.viewedpages, postId)>
					<cfset dontLog = true>
				<cfelse>
					<cfset session.viewedpages[postId] = 1>
				</cfif>

				<!--- Increment the view count. --->
				<cfif not structKeyExists(session.viewedpages, postId)>
					<cfset session.viewedpages[postId] = 1>
					<cfset application.blog.logView(postId)>
				</cfif>

			</cfcase>

		</cfswitch>

		<!--- The original include to the layout.cfm template was done here. This include contained logic for the header, the includes, stylesheets, and pods, and then the layout.cfm logic ended. Older logic for the actual posts were resumed after the layout.cfm template include.
		I have redesigned the page from here to include the entire logic for the presentation, including the logic found on the old layout.cfm template. I will be reusing Raymond's server side and ColdFusion functions, but the page has been vastly redesigned. --->

		<!--- //**************************************************************************************************************
				SEO: Meta tags, social media sharing, and cononical url's
		//****************************************************************************************************************--->

		<!--- The title will be overwritten by the description if the blog is in entry mode. --->
		<cfset titleMetaTagValue = htmlEditFormat(application.BlogDbObj.getBlogTitle())>
		<cfset descriptionMetaTagValue = application.BlogDbObj.getBlogDescription()>

		<!--- Add short strings to the title when the user selected category. --->
		<cfif isDefined("attributes.title")>
			<cfset additionalTitle = ": " & attributes.title>
		<cfelse>	
			<cfset additionalTitle = "">

			<!--- Categories. --->
			<cfif getPageMode() eq "category">
				<!--- This might be a list --->
				<cfset additionalTitle = "">
				<cfset categoryLoopCount = "1">
				<cfloop index="thisCategoryId" list="#URL.categoryId#">
					<cfset getTitle = application.blog.getCategory(thisCategoryId)>
					<cfset additionalTitle = additionalTitle & ": " & getTitle[1]['Category']>
					<cfset categoryLoopCount = categoryLoopCount + 1>
				</cfloop>
				<!--- Reset the loop count to an empty string --->
				<cfset categoryLoopCount = "">

				<!--- Add the category to the Title if the user is viewing the categories --->
				<cfif additionalTitle neq "">
					<cfset titleMetaTagValue = titleMetaTagValue & additionalTitle>
				</cfif>
				
			<!--- We're reading a single post. We're going to change the title to be the title of the post here.  --->
			<cfelseif getPageMode() eq "post">

				<!--- On individual entry pages, the title of the page is the title of the post. --->
				<cfset titleMetaTagValue = getPost[1]["Title"]>

				<!--- Get all of the keywords that may be enclosed in the post header. --->
				<cfif len(getPost[1]["PostHeader"])>
					<cfset xmlKeywords = application.blog.inspectPostContentForXmlKeywords(getPost[1]["PostHeader"])>
				<cfelse>
					<cfset xmlKeywords = "">
				</cfif>

			</cfif><!---<cfif getPageMode() eq "categories">--->
		</cfif>

		<!--- Preset the social media description variable. It may be overwritten later if the social media description is embedded in the xml within a post like so: '<socialMediaDescMetaData:this description></socialMediaDescMetaData>'. --->
		<cfset socialMediaDescMetaTagValue = descriptionMetaTagValue>

		<!--- Preset the default social media image URLs. We will overwrite these later if they're available. --->
		<cfset facebookImageMetaTagValue = thisUrl & getTheme[1]["DefaultLogoImageForSocialMediaShare"]>
		<cfset twitterImageMetaTagValue = thisUrl & getTheme[1]["DefaultLogoImageForSocialMediaShare"]>

		<!--- Default twitter card type. We will rewrite this if the twitterMediaUrlMetaData is defined. --->
		<cfset twitterCardType = "summary_large_image">

		<!--- Is this page displaying a single post?--->
		<cfif getPageMode() eq 'post'>

			<!--- **********************************************************************************************************
				Post Images
			************************************************************************************************************--->
			<!--- Determine if there is an enclosure, and if the social media images exist for this enclosure. We may over-ride these variables later if the social media images are embedded in xml in the post. --->

			<cfif len(getPost[1]["MediaUrl"]) and (getPost[1]["MediaUrl"] contains '.jpg' or getPost[1]["MediaUrl"] contains '.gif' or getPost[1]["MediaUrl"] contains '.png' or getPost[1]["MediaUrl"] contains '.webp')>

				<!--- If social media images are uploaded when a post is made, use the social media URL. --->
				<cfset facebookImageUrl = thisUrl & "/enclosures/facebook/" & getFileFromPath(getPost[1]["MediaUrl"])>
				<cfset twitterImageUrl = thisUrl & "/enclosures/twitter/" & getFileFromPath(getPost[1]["MediaUrl"])>

				<!--- If they exist, overwrite the meta tag vars. --->
				<cfif fileExists(expandPath(application.baseUrl & '/enclosures/facebook/' & getFileFromPath(getPost[1]["MediaUrl"])))>
					<cfset facebookImageMetaTagValue = facebookImageUrl>
				</cfif>
				<cfif fileExists(expandPath(application.baseUrl & '/enclosures/twitter/' & getFileFromPath(getPost[1]["MediaUrl"])))>
					<cfset twitterImageMetaTagValue = twitterImageUrl>
				</cfif>

			</cfif><!---<cfif (getPost[1]["MediaUrl"] contains '.jpg' or getPost[1]["MediaUrl"] contains '.gif' or getPost[1]["MediaUrl"] contains '.png' or getPost[1]["MediaUrl"] contains '.mp3')>--->

			<!--- SEO Meta tags. --->
			<cfif findNoCase("titleMetaTag", xmlKeywords) gt 0> 
				<!--- Overwrite the titleMetaTagValue variable. --->
				<cfset titleMetaTagValue = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'titleMetaTag')>
			</cfif>
			<cfif findNoCase("descMetaTag", xmlKeywords) gt 0> 
				<!--- Overwrite the descriptionMetaTagValue variable. --->
				<cfset descriptionMetaTagValue = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'descMetaTag')>
			</cfif>
			<!--- Check to see if there is a social media description in the post body --->
			<cfif findNoCase("socialMediaDescMetaData", xmlKeywords) gt 0> 
				<!--- Overwrite the socialMediaDescMetaTagValue variable. --->
				<cfset socialMediaDescMetaTagValue = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'socialMediaDescMetaData')>
			</cfif>

			<!--- Social Media Sharing for Images. --->
			<!--- Overwrite the facebookImageMetaTagValue variable --->
			<cfif findNoCase("facebookImageUrlMetaData", xmlKeywords) gt 0> 
				<!--- See if there is meta data inside of the blog post. --->
				<cfset facebookImageMetaTagValue = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'facebookImageUrlMetaData')>
			</cfif>
			<!--- Overwrite the twitterImageMetaTagValue --->
			<cfif findNoCase("twitterImageUrlMetaData", xmlKeywords) gt 0> 
				<!--- See if there is meta data inside of the blog post. --->
				<cfset twitterImageMetaTagValue = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'twitterImageUrlMetaData')>
			</cfif>

		</cfif><!---<cfif isDefined("URL.mode") and (URL.mode is "entry" or URL.mode eq 'alias')>--->

		<!--- //**************************************************************************************************************
		Video and Audio Content. We need to capture data from XML as well as the DB.
		//****************************************************************************************************************--->

		<cfparam name="videoType" default="" type="string">
		<cfparam name="videoPosterImageUrl" default="" type="string">
		<cfparam name="smallVideoSourceUrl" default="" type="string">
		<cfparam name="mediumVideoSourceUrl" default="" type="string">
		<cfparam name="largeVideoSourceUrl" default="" type="string">
		<cfparam name="videoCaptionsUrl" default="" type="string">
			   
		<!--- Overwrite the vars if the proper xml is embedded in the post header or the db. --->
		<cfif findNoCase("videoType", xmlKeywords) gt 0> 
			<cfset videoType = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'videoType')>
		<cfelseif getPost[1]["MediaType"] contains 'Video'>
			<!--- YouTube and Vimeo are nearly always .mp4 at this time. We may have to revisit this in the future. --->
			<cfset videoType = '.mp4'>
		</cfif>
			
		<!--- Media Cover --->
		<cfif findNoCase("videoPosterImageUrl", xmlKeywords) gt 0> 
			<cfset videoPosterImageUrl = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'videoPosterImageUrl')>
		<cfelseif len(getPost[1]["MediaVideoCoverUrl"])>
			<cfset videoPosterImageUrl = getPost[1]["MediaVideoCoverUrl"]>
		</cfif>	
			
		<!--- The WYSIWYG interface does not have different sources. This is only available using XML Directives. If the video is in the db, use the medium source URL --->
		<cfif findNoCase("smallVideoSourceUrl", xmlKeywords) gt 0> 
			<cfset smallVideoSourceUrl = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'smallVideoSourceUrl')>
		</cfif>
			
		<!--- Medium sized URL --->
		<cfif findNoCase("mediumVideoSourceUrl", xmlKeywords) gt 0> 
			<cfset mediumVideoSourceUrl = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'mediumVideoSourceUrl')>
		<cfelseif len(getPost[1]["MediaUrl"])>
			<cfset mediumVideoSourceUrl = getPost[1]["MediaUrl"]>
		</cfif>
			
		<cfif findNoCase("largeVideoSourceUrl", xmlKeywords) gt 0> 
			<cfset largeVideoSourceUrl = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'largeVideoSourceUrl')>
		</cfif>
			
		<!--- Local videos may have captions, however, YouTube and Vimeo will have them embedded in the video --->
		<cfif findNoCase("videoCaptionsUrl", xmlKeywords) gt 0> 
			<cfset videoCaptionsUrl = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'videoCaptionsUrl')>
		<cfelseif len(getPost[1]["MediaVideoVttFileUrl"])>
			<cfset videoPosterImageUrl = getPost[1]["MediaVideoVttFileUrl"]>
		</cfif>
			
		<cfif findNoCase("videoCrossOrigin", xmlKeywords) gt 0> 
			<cfset videoCrossOrigin = application.blog.getXmlKeywordValue(getPost[1]["PostHeader"], 'videoCrossOrigin')>
		</cfif>

		<!--- Create the video meta tags --->
		<!--- Preset the open graph default values. --->
		<cfset ogVideo = "">
		<cfset ogVideoSecureUrl = "">
		<cfset ogVideoWidth = "">
		<cfset ogVideoHeight = "">

		<!--- If the video type is defined, and this page displaying a single post, create the video meta tags. --->
		<cfif videoType neq "" and getPageMode() eq 'post'>
			<!--- Facebook currently recommends mp4 video at 720p. --->
			<cfset ogVideo = mediumVideoSourceUrl>
			<!--- Both Facebook and Twitter also recommends 1280 x 720 (2048K bitrate). --->
			<cfset ogVideoWidth = "1280">
			<cfset ogVideoHeight = "720">
			<!--- Twitter --->
			<!--- Note: the twitter video length must be under 140 seconds. --->
			<!--- Change the twitter card to player --->
			<cfset twitterCardType = "player">
		</cfif>

		<!--- //**************************************************************************************************************
		SEO: no index and canonical Url
		//****************************************************************************************************************--->

		<!--- Create a proper canonical rel tag and other SEO's --->
		<!--- Set default params --->
		<cfparam name="noIndex" default="false" type="boolean">
		<cfparam name="canonicalUrl" default="#thisUrl#" type="string">
		<cfparam name="addSocialMediaUnderEntry" default="false" type="boolean">

		<!--- Write a <meta name="robots" content="noindex"> tag for categories, postedBy, month and day in order to eliminate any duplicate content. --->
		<cfif isDefined("url.mode") and (url.mode is "cat" or url.mode is "postedBy" or url.mode is "month" or url.mode is "day")>
			<cfset noIndex = true>
		</cfif>

		<!--- Handle URL's that have arguments (theme, etc) --->
		<!--- Set the canonicalUrl to point to the correct URL (this is a single page app and there will be duplicate pages found in the crawl unfortunately). --->
		<cfif getPageMode() eq 'post'>
			<cftry>
				<cfset canonicalUrl  = application.blog.makeLink(postId)>
				<cfcatch type="any">
					<!--- This generally shows up when the link has changed. We will create a 404 status in order to drop the page from the search engines. --->
					<cfset error = "Articles or Entry is not defined">
					<cfheader statuscode="404" statustext="Page Not Found">
				</cfcatch>
			</cftry>
			<!--- Check to see if there is a URL rewrite rule in place. If a rewrite rule is in place, remove the 'index.cfm' from teh cannonicalUrl string. --->
			<cfif application.serverRewriteRuleInPlace>
				<cfset canonicalUrl = replaceNoCase(canonicalUrl, '/index.cfm', '')>
			</cfif>
			<cfset addSocialMediaUnderEntry = true>
		</cfif>
	</cfif><!---<cfif postFound>--->