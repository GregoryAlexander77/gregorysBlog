<cfsilent>
	<!--- This template handles the Kendo cards when the blog is in category mode. --->	

	<cfset displayCard = 1>
	<cfset isDebug = 0>	

	<cfif session.isMobile or showSidebar>
		<!--- There is only one card column and i is equal to the outer i in blogContentHtml.cfm template.--->
		<cfset columnCount = 1>	
	<cfelse>
		<!--- There are 3 cards per row requiring extra logic --->
		<!--- Increment our column count --->
		<cfif columnCount eq 0>
			<cfset columnCount = 1>	
		<cfelseif columnCount eq numColumns>
			<cfset columnCount = 1>	
			<cfset rowCount = rowCount + 1>
		<cfelse>
			<cfset columnCount = columnCount + 1>	
		</cfif>

		<cfif rowCount eq 1>
			<cfset i = columnCount>
		<cfelse>
			<cfset i = ((rowCount-1)*numColumns)+columnCount>	
		</cfif>
	</cfif>
</cfsilent>
<cfif isDebug>
	<cfoutput>arrayLen(getPost):#arrayLen(getPost)# columnCount:#columnCount# rowCount:#rowCount# i:#i#</cfoutput><br/>
	<!---<cfdump var="#getPost#">--->
</cfif>

<cfif i lte arrayLen(getPost)>
	<cfsilent>	
	<!--- Preset vars --->
	<cfset promotedPost = ''>  
	<cfset title = ''>
	<cfset author = ''>
	<cfset postUrl = ''>
	<cfset postContent = ''>
	<cfset enclosure = ''>
	<cfset thumbNail = ''>
	<cfset mediaId = ''>
	<cfset mediaType = ''>
	<cfset mediaUrl = ''>
	<cfset providerVideoId = ''>
	<cfset MediaVideoCoverUrl = ''>
	<cfset mediaVideoVttFileUrl = ''>
	<cfset enclosureMapIdList = ''>
	<cfset enclosureMapId = ''>
	<cfset datePosted = ''>
	<!--- Also reset the thumbnailMedia and carousels generated by the Renderer obj --->
	<cfset thumbnailMedia = ''>
	<cfset thumbnailCarousel = ''>

	<!--- Get the data --->		
	<cfset thisBlogId = 1>
	<cfset promotedPost = getPost[i]["Promoted"]>
	<cfset title = getPost[i]["Title"]>
	<cfset author = getPost[i]["FullName"]>
	<cfset postUrl = application.blog.makeLink(getPost[i]["PostId"])>
	<cfset postContent = getPost[i]["Description"]>
	<cfset enclosure = getPost[i]["MediaUrl"]>
	<cfset thumbnail = getPost[i]["MediaThumbnailUrl"]>
	<cfset mediaId = getPost[i]["MediaId"]>
	<cfset mediaType = getPost[i]["MediaType"]>
	<cfset mediaUrl = getPost[i]["MediaUrl"]>
	<cfset providerVideoId = getPost[i]["ProviderVideoId"]>
	<cfset MediaVideoCoverUrl = getPost[i]["MediaVideoCoverUrl"]>
	<cfset mediaVideoVttFileUrl = getPost[i]["mediaVideoVttFileUrl"]>
	<!--- Set the enclosureMapIdList. We only need to get the value of the first item in the list as all of the values are the same --->
	<cfset enclosureMapIdList = getPost[1]["EnclosureMapIdList"]>
	<!--- Get the map Id of the current row in the list. --->
	<cfset enclosureMapId = getPost[i]["EnclosureMapId"]>
	<cfset enclosureCarouselId = getPost[i]["EnclosureCarouselId"]>
	<cfset datePosted = getPost[i]["DatePosted"]> 
		
	<!--- Create the user link --->
	<cfset userLink = application.blog.makeUserLink(getPost[i]["FullName"])>
		
	<!--- Get the categories for this post. --->
	<cfset getCategories = application.blog.getCategoriesByPostId(getPost[i]["PostId"])>
	<!--- Get the top level category in the hiearchy --->
	<cfif arrayLen(getCategories)>
		<cfset parentCategory = getCategories[1]["Category"]>
	<cfelse>
		<cfset parentCategory = ""/>
	</cfif>

	<!--- ************************* Handle enlosure ************************* --->
	<!--- On desktop devices, use the original image if the sidebar is present, otherwise use the thumbnail image --->
	<cfif not session.isMobile and showSidebar>
		<cfset cardImage = enclosure>
		<cfset renderMediumCard = true>
	<cfelse>
		<cfset cardImage = thumbnail>	
		<cfset renderMediumCard = false>
	</cfif>
	<!--- There may not be a thumbnail. If so, use the enclosure. 
	<cfif not len(thumbnail) and len(enclosure)>
		<cfset cardImage = enclosure>
	</cfif>--->
	<!--- Use the noImage.jpg if the thumbnail does not exist (likely due to errors or a blog upgrade) --->
	<cfif not len(cardImage)>
		<cfset cardImage = "/cfbloggers/images/external/thumbnails/noImage.jpg">
	</cfif>
	<cfif isDebug>
		<cfoutput>cardImage: #cardImage#</cfoutput><br/>
	</cfif>

	<!--- ************************* Handle maps ************************* --->
	<!--- For desktop clients, handle multiple maps on a page. If there are multiple maps, we need to create a script that will load all of the maps at the top of the page. If we are using a mobile device and there are multiple maps- we will use an iframe to display the map. --->
	<cfif not session.isMobile and i eq 1 and listLen(enclosureMapIdList) gt 1>
		<!--- Invoke the renderLoadMapScript function --->
		<cfinvoke component="#RendererObj#" method="renderLoadMapScript" returnvariable="loadMapScript">
			<cfinvokeargument name="kendoTheme" value="#kendoTheme#">
			<cfinvokeargument name="enclosureMapIdList" value="#enclosureMapIdList#">
			<cfinvokeargument name="currentRow" value="#i#">
		</cfinvoke>
	<cfelse>
		<cfset loadMapScript = ''>
	</cfif>
	<!--- Render the map --->
	<cfif len(enclosureMapId)>
		<!--- Render the map. This returns a iframe renderMapPreview(mapId, thumbnail, renderKCardMediaClass, renderMediumCard, showSidebar) --->
		<cfset thumbnailMap = RendererObj.renderMapPreview(enclosureMapId, true, true, renderMediumCard, showSidebar)>
	</cfif>

	<!--- ************************* Handle self hosted videos ************************* --->
	<cfif len(mediaId) and mediaType contains 'Video'>
		<!--- Note: this will return an iframe. --->
		<cfinvoke component="#RendererObj#" method="renderEnclosureVideoPreview" returnvariable="thumbnailMedia">
			<cfinvokeargument name="mediaUrl" value="#mediaUrl#">
			<cfinvokeargument name="mediaId" value="#mediaId#">
			<cfinvokeargument name="providerVideoId" value="#providerVideoId#">
			<cfinvokeargument name="posterUrl" value="#mediaVideoCoverUrl#">
			<cfinvokeargument name="videoCaptionsUrl" value="#mediaVideoVttFileUrl#">
			<cfinvokeargument name="renderThumbnail" value="true">
			<cfinvokeargument name="renderKCardMediaClass" value="true">
			<cfinvokeargument name="renderMediumCard" value="#renderMediumCard#">
			<cfinvokeargument name="showSidebar" value="#showSidebar#">
		</cfinvoke> 
	</cfif><!---<cfif len(mediaId) and mediaType contains 'Video'>--->
				
	<!--- Also see if a video should be rendered using xmlkeywords. This returns a structure. --->
	<cfset xmlKeywordStruct = application.blog.getXmlKeywordStruct(getPost[i]["PostHeader"])>
	<!--- Is there a video directive the xmlKeywords? --->
	<cfif len(xmlKeywordStruct.VideoDirective)>
		<!--- Get the smallest video if possible --->
		<cfif len(xmlKeywordStruct.smallVideoSourceUrl)>
			<cfset mediaUrl = xmlKeywordStruct.smallVideoSourceUrl>
		<cfelseif len(xmlKeywordStruct.mediumVideoSourceUrl)>
			<cfset mediaUrl = xmlKeywordStruct.mediumVideoSourceUrl>
		<cfelseif len(xmlKeywordStruct.largeVideoSourceUrl)>
			<cfset mediaUrl = xmlKeywordStruct.largeVideoSourceUrl>
		<cfelseif len(xmlKeywordStruct.youTubeUrl)>
			<cfset mediaUrl = xmlKeywordStruct.youTubeUrl>
		</cfif>
		
		<!--- Render the video from the directives --->
		<cfif len(mediaUrl)>	
			<!--- Render the video, this will return an iframe. --->
			<cfinvoke component="#RendererObj#" method="renderEnclosureVideoPreview" returnvariable="thumbnailMedia">
				<cfinvokeargument name="mediaUrl" value="#mediaUrl#">
				<!--- Galaxie Directives don't have a mediaId or a providerVideoId --->
				<cfinvokeargument name="mediaId" value="">
				<cfinvokeargument name="providerVideoId" value="">
				<cfinvokeargument name="posterUrl" value="#xmlKeywordStruct.videoPosterImageUrl#">
				<cfinvokeargument name="videoCaptionsUrl" value="#xmlKeywordStruct.videoCaptionsUrl#">
				<cfinvokeargument name="renderThumbnail" value="true">
				<cfinvokeargument name="renderKCardMediaClass" value="true">
				<cfinvokeargument name="showSidebar" value="#showSidebar#">
			</cfinvoke> 
			<cfdump var="#xmlKeywordStruct#">
		</cfif>
	</cfif>
					
	<!--- Handle carousels --->
	<cfif len(enclosureCarouselId)>
		<cfif renderMediumCard>
			<cfset carouselInterface = "mediumCard">
		<cfelse>
			<cfset carouselInterface = "card">
		</cfif>
		<!--- Render the carousel and don't specify an editor type as this is used on the main blog page. This returns a iframe renderCarouselPreview(carouselId, interface) --->
		<cfset thumbnailCarousel = RendererObj.renderCarouselPreview(enclosureCarouselId, carouselInterface)>
	</cfif>

	<!--- Remove HTML from the string --->
	<cfinvoke component="#application.jsoupComponentPath#" method="jsoupConvertHtmlToText" returnvariable="postContent">
		<cfinvokeargument name="html" value="#postContent#">
	</cfinvoke>

	<!--- Make the content a bit longer with white white space if it is too short --->
	<cfif len(postContent) lt 100>
		<cfset postContent = postContent & "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;">
	</cfif>
	
	</cfsilent>	
		<cfif isDebug><cfoutput>Rendering card- i:#i# arrayLen(getPost):#arrayLen(getPost)# len(postUrl):#len(postUrl)#<br/></cfoutput></cfif>
		<cfif i lte arrayLen(getPost) and displayCard and len(postUrl)>
			<div class="k-card <cfif promotedPost>highlightedWidget</cfif>" style="width: <cfoutput>#cardWidth#</cfoutput>%;"> 
				<div class="k-card-body">
					<a href="<cfoutput>#postUrl#</cfoutput>" aria-label="thumbnail map">
						<cfif len(thumbnailMedia)>
							<cfoutput>#thumbnailMedia#</cfoutput>
						<cfelseif len(enclosureMapId)>
							<cfoutput>#thumbnailMap#</cfoutput>
						<cfelseif len(thumbnailCarousel)>
							<cfoutput>#thumbnailCarousel#</cfoutput>
						<cfelse>
							<div class="img-hover-zoom img-hover-brightzoom"><img class="fade lazied shown k-card-image" data-type="image" data-src="<cfoutput>#cardImage#</cfoutput>" alt="<cfoutput>#title#</cfoutput>" data-lazied="IMG" src="<cfoutput>#cardImage#</cfoutput>"></div>
						</cfif>
					</a>
					<hr class="k-card-separator" />
					<h2 class="k-card-title" style="font-size: 14pt"><cfif promotedPost>&nbsp;<i class="fa fa-bullhorn" aria-hidden="true" style="font-size: 14pt" title="Announcement"></i>&nbsp;&nbsp;</cfif><a href="<cfoutput>#postUrl#</cfoutput>" aria-label="<cfoutput>#title#</cfoutput>"><cfoutput>#title#</cfoutput></a></h2>
					<hr class="k-card-separator" />
					<span class="blog-content"><cfoutput>#postContent#</cfoutput></span>
				</div><!---<div class="k-card-body">--->
				<span class="k-card-action">
					<span class="k-button k-primary" onClick="window.open('<cfoutput>#postUrl#</cfoutput>')">Read More...</span>
				</span>
			</div><!---<div class="k-card" style="width: 31%;">--->
		</cfif><!---<cfif displayCard>--->
	</cfif>