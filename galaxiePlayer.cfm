<!doctype html>
<!--- <cfdump var="#URL#" label="url"> --->
<cfsilent>
	
<cfset isDebug = 0>
	
<!--- There can be multiple arguments to get the file. We can get the full path from the URL, or extract it from the database using the MediaId like we do when we are using the tinymce editor in the administrative site. --->

<!--- If the mediaId is in the URL, get the file path from the database --->
<cfparam name="URL.mediaId" default="">
<!--- We can pass in the full video file in the videoUrl --->
<cfparam name="URL.videoUrl" default="">
<!--- The poster  covers the video may be passed as well. --->
<cfparam name="URL.posterUrl" default="">
<!--- The WebVTT file allows captions --->
<cfparam name="URL.videoCaptionsUrl" default="">
<!--- Set the default provider arg (local, vimeo or youtube) --->
<cfparam name="URL.provider" default="">
<!--- The provider video ID is necessary for YouTube and Vimeo videos. --->
<cfparam name="URL.providerVideoId" default="">
<!--- Our default cross origin value should be set to false --->
<cfparam name="URL.crossOrigin" default="false">
<!--- We are using thumbnails on the admin edit post page --->
<cfparam name="URL.thumbnail" default="false">
<!--- Variable to remove the height attribute for kendo cards --->
<cfparam name="URL.kcard" default="false">
<!--- The kendo theme should be passed in if possible. We can get it later if it is not passed in. --->
<cfparam name="URL.kendoTheme" default="">
	
<cfparam name="YouTubeUrl" default="">
<cfparam name="VimeoUrl" default="">
<cfparam name="providerVideoId" default="">
	
<!--- Get the current blog theme if it was not passed in --->
<cfif URL.kendoTheme eq ''>
	<cfset selectedThemeAlias = trim(application.blog.getSelectedThemeAlias())>
	<!--- Get the Theme data for this theme. --->
	<cfset getTheme = application.blog.getTheme(themeAlias=selectedThemeAlias)>	
	<!--- Get the Kendo theme --->
	<cfset kendoTheme = getTheme[1]["KendoTheme"]>
</cfif>
	
<!--- Set the size of the video. This should be set smaller than the size of the iframe --->
<cfif URL.thumbnail>
	<!--- The size of the iframe container is 235x130 --->
	<cfset width = "213">
	<cfset height = "110">
<cfelse>
	<cfset width = "768">
	<cfset height = "432">
</cfif>
	
<!--- Note: the incoming URL from youTube or vimeo is something like so: 'https://gregorysblog.org/galaxiePlayer.cfm?videoUrl=https://www.youtube.com/watch?v=fhtw7Dpntb4&posterUrl=&videoCaptionsUrl='
We need to inspect the URL to determine the provider, ie youtube, vimeo or a local video file and adjust the code as necessary. --->
	
<!--- If the mediaId exists, get the URL to the video from the database --->
<cfif URL.mediaId neq "">
	<cfset videoUrl = application.blog.getMediaUrlByMediaId(URL.mediaId)>
	<cfset provider = "local">
<cfelse><!---<cfif URL.mediaId neq "">--->
	<!--- Determine the provider (YouTube or Vimeo) --->
	<cfif URL.videoUrl contains 'youtube' or URL.videoUrl contains '/youtu.be'>
		<cfset provider = "youtube">
	<cfelseif URL.videoUrl contains 'vimeo'>
		<cfset provider = "vimeo">
	<!--- The provider and videoProviderId may be sent using a Galaxie Blog Directive --->
	<cfelseif len(URL.provider)>
		<cfset provider = URL.provider>
	<cfelse>
		<cfset provider = "other">
	</cfif>
</cfif>
			
<!--- Try to get the provider video Id --->
<cfif provider eq 'YouTube'>
	<cfif not len(URL.providerVideoId)>
		<!--- Get the YouTubeId --->
		<cfset providerVideoId = application.blog.getYouTubeVideoId(URL.videoUrl)>
	<cfelse>
		<cfset providerVideoId = URL.providerVideoId>
	</cfif>
<cfelseif provider eq 'Vimeo'>
	<cfif not len(URL.providerVideoId)>
		<!--- Get the Vimeo ID --->
		<cfset providerVideoId = application.blog.getVimeoVideoId(URL.videoUrl)>
	<cfelse>
		<cfset providerVideoId = URL.providerVideoId>
	</cfif>
</cfif><!---<cfif provider eq 'YouTube'>--->
			
<!--- Create the links to the video providers --->
<cfif provider eq 'youtube'>
	<cfif len(providerVideoId)>
		<!--- The video is using the videeId --->
		<cfset YouTubeUrl = "https://www.youtube.com/embed/" & providerVideoId & "?origin=" & application.blogHostUrl & "&iv_load_policy=3&modestbranding=1&playsinline=1&showinfo=0&rel=0&enablejsapi=1">
	<cfelse>
		<!--- Use the URL that was passed in. This may not work with YouTube videos. --->
		<cfset YouTubeUrl = "https://www.youtube.com/embed/bTqVqk7FSmY?origin=https://www.gregoryalexander.com&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1">
	</cfif>
	
	<!---<cfset YouTubeUrl = "https://www.youtube.com/embed/" & URL.providerVideoId & "?origin=" & application.blogHostUrl & "&iv_load_policy=3&modestbranding=1&playsinline=1&showinfo=0&rel=0&enablejsapi=1">--->
<cfelseif provider eq 'vimeo'>
	<cfset vimeoUrl = "https://player.vimeo.com/video/" & URL.providerVideoId & "?loop=false&byline=false&portrait=false&title=false&speed=true&transparent=0&gesture=media">
</cfif>
			
<!--- Construct our URL to prompt the edit dialog's --->
	

</cfsilent><head>
	<!-- Plyr (our HTML5 media player) -->
	<cfoutput><script src="#application.baseUrl#/common/libs/plyr/plyr.js"></script>
	<!-- Defer the plyr css. -->
	<link rel="stylesheet" href="#application.baseUrl#/common/libs/plyr/themeCss/#kendoTheme#.css" /></cfoutput>
</head>
		
<cfif isDebug>
	<cfoutput>URL.videoUrl: #URL.videoUrl# URL.providerVideoId: #URL.providerVideoId# URL.mediaId: #URL.mediaId# provider:#URL.provider#</cfoutput><br/>
</cfif>
	
<!-- This must be set to 100% -->	
<style>
.mediaPlayer video {
	width: 100% !important
}
<cfif isDefined("URL.posterUrl")>
/* Style to have the video cover set at 100% */
mediaPlayer video {
   	background: transparent url('<cfoutput>#URL.posterUrl#</cfoutput>') 50% 50% / cover no-repeat ;
}
</cfif>
</style><!---https://www.youtube.com/watch?v=LXt-hDDiEAQ&amp;feature=youtu.be--->

	<cfif provider eq 'youTube'>
		<div class="k-content wide">
			<div class="plyr__video-embed" id="mediaPlayer">
				<iframe title="media player"
					width="<cfoutput>#width#</cfoutput>"
					height="<cfoutput>#height#</cfoutput>"
					src="<cfoutput>#YouTubeUrl#</cfoutput>"
					allowfullscreen
					allowtransparency
					allow="autoplay">
				</iframe>
			</div>
		</div>
	<cfelseif provider eq 'vimeo'>
		<div class="k-content wide">
			<div class="plyr__video-embed" id="mediaPlayer">
				<iframe title="media player"
					width="<cfoutput>#width#</cfoutput>"
					height="<cfoutput>#height#</cfoutput>"
					src="<cfoutput>#vimeoUrl#</cfoutput>"
					allowfullscreen
					allowtransparency
					allow="autoplay">
				</iframe>
			</div>
		</div>
	<cfelse>
		<video 
			<cfif not URL.kcard>
			width="<cfoutput>#width#</cfoutput>"
			height="<cfoutput>#height#</cfoutput>"
			<cfelse>
			width="<cfoutput>100%</cfoutput>"
			</cfif>
			controls
			<cfif URL.crossOrigin eq true>crossorigin</cfif>
			playsinline
			<cfif URL.posterUrl neq "">poster="<cfoutput>#URL.posterUrl#</cfoutput></cfif>"
			id="player">
			<!-- Video files -->
			<!-- 1280x720 --->
			<source
				src="<cfoutput>#URL.videoUrl#?id=#createUuid()#</cfoutput>"
				type="video/mp4"
				size="720"
			/>
		<cfif URL.videoCaptionsUrl neq "">
			<!-- Caption files -->
			<track
				kind="captions"
				label="English"
				srclang="en"
				src="<cfoutput>#application.baseUrl##videoCaptionsUrl#</cfoutput>"
				default
			/>
		</cfif>

		</video>
	</cfif>
</div>
