<cfset accentColor = application.blog.getPrimaryColorsByTheme(kendoTheme:kendoTheme,setting:'accentColor')>
<style>
@charset "UTF-8";
.uppy-Root {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: left;
  position: relative;
  color: #333
}
.uppy-Root *, .uppy-Root :after, .uppy-Root :before {
  box-sizing: inherit
}
.uppy-Root [hidden] {
  display: none
}
.uppy-u-reset {
  -webkit-appearance: none;
  line-height: 1;
  padding: 0;
  color: inherit;
  -webkit-backface-visibility: visible;
  backface-visibility: visible;
  background: none;
  border: none;
  border-collapse: separate;
  border-image: none;
  border-radius: 0;
  border-spacing: 0;
  box-shadow: none;
  clear: none;
  cursor: auto;
  display: inline;
  empty-cells: show;
  float: none;
  font-family: inherit;
  font-size: inherit;
  font-style: normal;
  font-variant: normal;
  font-weight: 400;
  font-stretch: normal;
  -webkit-hyphens: none;
  -ms-hyphens: none;
  hyphens: none;
  left: auto;
  letter-spacing: normal;
  list-style: none;
  margin: 0;
  max-height: none;
  max-width: none;
  min-height: 0;
  min-width: 0;
  opacity: 1;
  outline: medium none invert;
  overflow: visible;
  overflow-x: visible;
  overflow-y: visible;
  text-align: left;
  text-decoration: none;
  text-indent: 0;
  text-shadow: none;
  text-transform: none;
  top: auto;
  transform: none;
  transform-origin: 50% 50% 0;
  transform-style: flat;
  transition: none 0s ease 0s;
  unicode-bidi: normal;
  vertical-align: baseline;
  visibility: visible;
  white-space: normal;
  z-index: auto
}
.uppy-c-textInput {
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
  line-height: 1.5;
  padding: 6px 8px;
  background-color: #fff
}
.uppy-size--md .uppy-c-textInput {
  padding: 8px 10px
}
.uppy-c-textInput:focus {
  border-color: rgba(34, 117, 215, .6);
  outline: none;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .15)
}
[data-uppy-theme=dark] .uppy-c-textInput {
  background-color: #333;
  border-color: #333;
  color: #eaeaea
}
[data-uppy-theme=dark] .uppy-c-textInput:focus {
  border-color: #525252;
  box-shadow: none
}
.uppy-c-icon {
  max-width: 100%;
  max-height: 100%;
  fill: currentColor;
  display: inline-block;
  overflow: hidden
}
.uppy-c-btn {
  display: inline-block;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  font-family: inherit;
  font-size: 16px;
  line-height: 1;
  font-weight: 500;
  transition-property: background-color, color;
  transition-duration: .3s;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none
}
.uppy-c-btn:not(:disabled):not(.disabled) {
  cursor: pointer
}
.uppy-c-btn::-moz-focus-inner {
  border: 0
}
.uppy-c-btn-primary {
  font-size: 14px;
  padding: 10px 18px;
  border-radius: 4px;
  background-color: #<cfoutput>#accentColor#</cfoutput>;/*#2275d7*/
  color: #fff
}
.uppy-c-btn-primary:hover {
  background-color: #<cfoutput>#accentColor#</cfoutput>;/*#1b5dab*/
}
.uppy-c-btn-primary:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .4)
}
.uppy-size--md .uppy-c-btn-primary {
  padding: 13px 22px
}
[data-uppy-theme=dark] .uppy-c-btn-primary {
  color: #eaeaea
}
[data-uppy-theme=dark] .uppy-c-btn-primary:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-c-btn-primary::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-c-btn-primary:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-c-btn-link {
  font-size: 14px;
  line-height: 1;
  padding: 10px 15px;
  border-radius: 4px;
  background-color: transparent;
  color: #525252
}
.uppy-c-btn-link:hover {
  color: #333
}
.uppy-c-btn-link:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .25)
}
.uppy-size--md .uppy-c-btn-link {
  padding: 13px 18px
}
[data-uppy-theme=dark] .uppy-c-btn-link {
  color: #eaeaea
}
[data-uppy-theme=dark] .uppy-c-btn-link:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-c-btn-link::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-c-btn-link:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
[data-uppy-theme=dark] .uppy-c-btn-link:hover {
  color: #939393
}
.uppy-c-btn--small {
  font-size: .9em;
  padding: 7px 16px;
  border-radius: 2px
}
.uppy-size--md .uppy-c-btn--small {
  padding: 8px 10px;
  border-radius: 2px
}
.uppy-Informer {
  position: absolute;
  bottom: 60px;
  left: 0;
  right: 0;
  text-align: center;
  opacity: 1;
  transform: none;
  transition: all .25s ease-in;
  z-index: 1005
}
.uppy-Informer[aria-hidden=true] {
  opacity: 0;
  transform: translateY(350%);
  transition: all .3s ease-in;
  z-index: -1000
}
.uppy-Informer p {
  display: inline-block;
  margin: 0;
  font-size: 12px;
  line-height: 1.4;
  font-weight: 400;
  padding: 6px 15px;
  background-color: #757575;
  color: #fff;
  border-radius: 18px;
  max-width: 90%
}
.uppy-size--md .uppy-Informer p {
  font-size: 14px;
  line-height: 1.3;
  max-width: 500px;
  padding: 10px 20px
}
[data-uppy-theme=dark] .uppy-Informer p {
  background-color: #333
}
.uppy-Informer span {
  line-height: 12px;
  width: 13px;
  height: 13px;
  display: inline-block;
  vertical-align: middle;
  color: #525252;
  background-color: #fff;
  border-radius: 50%;
  position: relative;
  top: -1px;
  left: 3px;
  font-size: 10px;
  margin-left: -1px
}
.uppy-Informer span:hover {
  cursor: help
}
.uppy-Informer span:after {
  line-height: 1.3;
  word-wrap: break-word
}
.uppy-Root [aria-label][role ~ =tooltip] {
  position: relative
}
.uppy-Root [aria-label][role ~ =tooltip]:after, .uppy-Root [aria-label][role ~ =tooltip]:before {
  transform: translateZ(0);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  will-change: transform;
  opacity: 0;
  pointer-events: none;
  transition: all var(--microtip-transition-duration, .18s) var(--microtip-transition-easing, ease-in-out) var(--microtip-transition-delay, 0s);
  position: absolute;
  box-sizing: border-box;
  z-index: 10;
  transform-origin: top
}
.uppy-Root [aria-label][role ~ =tooltip]:before {
  background-size: 100% auto !important;
  content: ""
}
.uppy-Root [aria-label][role ~ =tooltip]:after {
  background: rgba(17, 17, 17, .9);
  border-radius: 4px;
  color: #fff;
  content: attr(aria-label);
  font-size: var(--microtip-font-size, 13px);
  font-weight: var(--microtip-font-weight, normal);
  text-transform: var(--microtip-text-transform, none);
  padding: .5em 1em;
  white-space: nowrap;
  box-sizing: content-box
}
.uppy-Root [aria-label][role ~ =tooltip]:focus:after, .uppy-Root [aria-label][role ~ =tooltip]:focus:before, .uppy-Root [aria-label][role ~ =tooltip]:hover:after, .uppy-Root [aria-label][role ~ =tooltip]:hover:before {
  opacity: 1;
  pointer-events: auto
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=top]:before {
  background: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='36' height='12'%3E%3Cpath fill='rgba(17, 17, 17, 0.9)' d='M2.658 0h32.004c-6 0-11.627 12.002-16.002 12.002C14.285 12.002 8.594 0 2.658 0z'/%3E%3C/svg%3E") no-repeat;
  height: 6px;
  width: 18px;
  margin-bottom: 5px
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=top]:after {
  margin-bottom: 11px
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=top]:before {
  transform: translate3d(-50%, 0, 0);
  bottom: 100%;
  left: 50%
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=top]:hover:before {
  transform: translate3d(-50%, -5px, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=top]:after {
  transform: translate3d(-50%, 0, 0);
  bottom: 100%;
  left: 50%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=top]:hover:after {
  transform: translate3d(-50%, -5px, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=top-left]:after {
  transform: translate3d(calc(-100% + 16px), 0, 0);
  bottom: 100%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=top-left]:hover:after {
  transform: translate3d(calc(-100% + 16px), -5px, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=top-right]:after {
  transform: translate3d(-16px, 0, 0);
  bottom: 100%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=top-right]:hover:after {
  transform: translate3d(-16px, -5px, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=bottom]:before {
  background: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='36' height='12'%3E%3Cpath fill='rgba(17, 17, 17, 0.9)' d='M33.342 12H1.338c6 0 11.627-12.002 16.002-12.002C21.715-.002 27.406 12 33.342 12z'/%3E%3C/svg%3E") no-repeat;
  height: 6px;
  width: 18px;
  margin-top: 5px;
  margin-bottom: 0
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=bottom]:after {
  margin-top: 11px
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=bottom]:before {
  transform: translate3d(-50%, -10px, 0);
  bottom: auto;
  left: 50%;
  top: 100%
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=bottom]:hover:before {
  transform: translate3d(-50%, 0, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position|=bottom]:after {
  transform: translate3d(-50%, -10px, 0);
  top: 100%;
  left: 50%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=bottom]:hover:after {
  transform: translate3d(-50%, 0, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=bottom-left]:after {
  transform: translate3d(calc(-100% + 16px), -10px, 0);
  top: 100%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=bottom-left]:hover:after {
  transform: translate3d(calc(-100% + 16px), 0, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=bottom-right]:after {
  transform: translate3d(-16px, -10px, 0);
  top: 100%
}
.uppy-Root [role ~ =tooltip][data-microtip-position=bottom-right]:hover:after {
  transform: translate3d(-16px, 0, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=left]:after, .uppy-Root [role ~ =tooltip][data-microtip-position=left]:before {
  bottom: auto;
  left: auto;
  right: 100%;
  top: 50%;
  transform: translate3d(10px, -50%, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=left]:before {
  background: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='36'%3E%3Cpath fill='rgba(17, 17, 17, 0.9)' d='M0 33.342V1.338c0 6 12.002 11.627 12.002 16.002C12.002 21.715 0 27.406 0 33.342z'/%3E%3C/svg%3E") no-repeat;
  height: 18px;
  width: 6px;
  margin-right: 5px;
  margin-bottom: 0
}
.uppy-Root [role ~ =tooltip][data-microtip-position=left]:after {
  margin-right: 11px
}
.uppy-Root [role ~ =tooltip][data-microtip-position=left]:hover:after, .uppy-Root [role ~ =tooltip][data-microtip-position=left]:hover:before {
  transform: translate3d(0, -50%, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=right]:after, .uppy-Root [role ~ =tooltip][data-microtip-position=right]:before {
  bottom: auto;
  left: 100%;
  top: 50%;
  transform: translate3d(-10px, -50%, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-position=right]:before {
  background: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='36'%3E%3Cpath fill='rgba(17, 17, 17, 0.9)' d='M12 2.658v32.004c0-6-12.002-11.627-12.002-16.002C-.002 14.285 12 8.594 12 2.658z'/%3E%3C/svg%3E") no-repeat;
  height: 18px;
  width: 6px;
  margin-bottom: 0;
  margin-left: 5px
}
.uppy-Root [role ~ =tooltip][data-microtip-position=right]:after {
  margin-left: 11px
}
.uppy-Root [role ~ =tooltip][data-microtip-position=right]:hover:after, .uppy-Root [role ~ =tooltip][data-microtip-position=right]:hover:before {
  transform: translate3d(0, -50%, 0)
}
.uppy-Root [role ~ =tooltip][data-microtip-size=small]:after {
  white-space: normal;
  width: 80px
}
.uppy-Root [role ~ =tooltip][data-microtip-size=medium]:after {
  white-space: normal;
  width: 150px
}
.uppy-Root [role ~ =tooltip][data-microtip-size=large]:after {
  white-space: normal;
  width: 260px
}
.uppy-StatusBar {
  display: -ms-flexbox;
  display: flex;
  position: relative;
  height: 40px;
  line-height: 40px;
  font-size: 12px;
  font-weight: 400;
  color: #fff;
  background-color: #fff;
  z-index: 1001;
  transition: height .2s
}
[data-uppy-theme=dark] .uppy-StatusBar {
  background-color: #1f1f1f
}
.uppy-size--md .uppy-StatusBar {
  height: 46px
}
.uppy-StatusBar:before {
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background-color: #eaeaea
}
[data-uppy-theme=dark] .uppy-StatusBar:before {
  background-color: #757575
}
.uppy-StatusBar[aria-hidden=true] {
  overflow-y: hidden;
  height: 0
}
.uppy-StatusBar.is-complete .uppy-StatusBar-progress {
  background-color: background-color: #<cfoutput>#accentColor#</cfoutput>;/*#1bb240*/
}
.uppy-StatusBar.is-error .uppy-StatusBar-progress {
  background-color: #e32437
}
.uppy-StatusBar.is-complete .uppy-StatusBar-statusIndicator {
  color: #1bb240
}
.uppy-StatusBar.is-error .uppy-StatusBar-statusIndicator {
  color: #e32437
}
.uppy-StatusBar:not([aria-hidden=true]).is-waiting {
  background-color: #fff;
  height: 65px;
  border-top: 1px solid #eaeaea
}
[data-uppy-theme=dark] .uppy-StatusBar:not([aria-hidden=true]).is-waiting {
  background-color: #1f1f1f;
  border-top: 1px solid #333
}
.uppy-StatusBar-progress {
  background-color: #2275d7;
  height: 2px;
  position: absolute;
  z-index: 1001;
  transition: background-color, width .3s ease-out
}
.uppy-StatusBar-progress.is-indeterminate {
  background-size: 64px 64px;
  background-image: linear-gradient(45deg, rgba(0, 0, 0, .3) 25%, transparent 0, transparent 50%, rgba(0, 0, 0, .3) 0, rgba(0, 0, 0, .3) 75%, transparent 0, transparent);
  animation: uppy-StatusBar-ProgressStripes 1s linear infinite
}
@keyframes uppy-StatusBar-ProgressStripes {
  0% {
    background-position: 0 0
  }
  to {
    background-position: 64px 0
  }
}
.uppy-StatusBar.is-postprocessing .uppy-StatusBar-progress, .uppy-StatusBar.is-preprocessing .uppy-StatusBar-progress {
  background-color: #f6a623
}
.uppy-StatusBar.is-waiting .uppy-StatusBar-progress {
  display: none
}
.uppy-StatusBar-content {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  position: relative;
  z-index: 1002;
  padding-left: 10px;
  white-space: nowrap;
  text-overflow: ellipsis;
  color: #333;
  height: 100%
}
.uppy-size--md .uppy-StatusBar-content {
  padding-left: 15px
}
[data-uppy-theme=dark] .uppy-StatusBar-content {
  color: #eaeaea
}
.uppy-StatusBar-status {
  line-height: 1.4;
  font-weight: 400;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-pack: center;
  justify-content: center;
  padding-right: .3em
}
.uppy-Root:not(.uppy-size--md) .uppy-StatusBar-additionalInfo {
  display: none
}
.uppy-StatusBar-statusPrimary {
  font-weight: 500;
  line-height: 1
}
[data-uppy-theme=dark] .uppy-StatusBar-statusPrimary {
  color: #eaeaea
}
.uppy-StatusBar-statusSecondary {
  margin-top: 1px;
  font-size: 11px;
  line-height: 1.2;
  display: inline-block;
  color: #757575;
  white-space: nowrap
}
[data-uppy-theme=dark] .uppy-StatusBar-statusSecondary {
  color: #bbb
}
.uppy-StatusBar-statusSecondaryHint {
  display: inline-block;
  vertical-align: middle;
  margin-right: 5px;
  line-height: 1
}
.uppy-size--md .uppy-StatusBar-statusSecondaryHint {
  margin-right: 8px
}
.uppy-StatusBar-statusIndicator {
  position: relative;
  top: 1px;
  color: #525252;
  margin-right: 7px
}
.uppy-StatusBar-statusIndicator svg {
  vertical-align: text-bottom
}
.uppy-StatusBar-actions {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  position: absolute;
  top: 0;
  bottom: 0;
  right: 10px;
  z-index: 1004
}
.uppy-StatusBar.is-waiting .uppy-StatusBar-actions {
  width: 100%;
  position: static;
  padding: 0 15px;
  background-color: #fafafa
}
[data-uppy-theme=dark] .uppy-StatusBar.is-waiting .uppy-StatusBar-actions {
  background-color: #1f1f1f
}
.uppy-StatusBar-actionCircleBtn {
  line-height: 1;
  cursor: pointer;
  margin: 3px;
  opacity: .9
}
.uppy-StatusBar-actionCircleBtn:focus {
  outline: none
}
.uppy-StatusBar-actionCircleBtn::-moz-focus-inner {
  border: 0
}
.uppy-StatusBar-actionCircleBtn:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
[data-uppy-theme=dark] .uppy-StatusBar-actionCircleBtn:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-StatusBar-actionCircleBtn::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-StatusBar-actionCircleBtn:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-StatusBar-actionCircleBtn:hover {
  opacity: 1
}
.uppy-StatusBar-actionCircleBtn:focus {
  border-radius: 50%
}
.uppy-StatusBar-actionCircleBtn svg {
  vertical-align: bottom
}
.uppy-StatusBar-actionBtn {
  display: inline-block;
  vertical-align: middle;
  font-size: 10px;
  line-height: inherit;
  color: #2275d7
}
.uppy-size--md .uppy-StatusBar-actionBtn {
  font-size: 11px
}
.uppy-StatusBar-actionBtn--retry {
  height: 16px;
  border-radius: 8px;
  margin-right: 6px;
  background-color: #ff4b23;
  line-height: 1;
  color: #fff;
  padding: 1px 6px 3px 18px;
  position: relative
}
.uppy-StatusBar-actionBtn--retry:focus {
  outline: none
}
.uppy-StatusBar-actionBtn--retry::-moz-focus-inner {
  border: 0
}
.uppy-StatusBar-actionBtn--retry:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--retry:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--retry::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--retry:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-StatusBar-actionBtn--retry:hover {
  background-color: #f92d00
}
.uppy-StatusBar-actionBtn--retry svg {
  position: absolute;
  top: 3px;
  left: 6px
}
.uppy-StatusBar.is-waiting .uppy-StatusBar-actionBtn--upload {
  font-size: 14px;
  width: 100%;
  padding: 15px 10px;
  color: #fff;
  background-color: background-color: #<cfoutput>#accentColor#</cfoutput>;/*#1bb240*/
  line-height: 1
}
.uppy-StatusBar.is-waiting .uppy-StatusBar-actionBtn--upload:hover {
  background-color: #<cfoutput>#accentColor#</cfoutput>;/*#189c38*/
}
[data-uppy-theme=dark] .uppy-StatusBar.is-waiting .uppy-StatusBar-actionBtn--upload {
  background-color: #<cfoutput>#accentColor#</cfoutput>;/*#1c8b37*/
}
[data-uppy-theme=dark] .uppy-StatusBar.is-waiting .uppy-StatusBar-actionBtn--upload:hover {
  background-color: #<cfoutput>#accentColor#</cfoutput>;/*#18762f*/
}
.uppy-size--md .uppy-StatusBar.is-waiting .uppy-StatusBar-actionBtn--upload {
  padding: 13px 22px;
  width: auto
}
.uppy-StatusBar:not(.is-waiting) .uppy-StatusBar-actionBtn--upload {
  background-color: transparent;
  color: #2275d7
}
.uppy-StatusBar-actionBtn--uploadNewlyAdded {
  padding-right: 3px;
  padding-left: 3px;
  padding-bottom: 1px;
  border-radius: 3px
}
.uppy-StatusBar-actionBtn--uploadNewlyAdded:focus {
  outline: none
}
.uppy-StatusBar-actionBtn--uploadNewlyAdded::-moz-focus-inner {
  border: 0
}
.uppy-StatusBar-actionBtn--uploadNewlyAdded:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--uploadNewlyAdded:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--uploadNewlyAdded::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--uploadNewlyAdded:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-StatusBar-actionBtn--done {
  line-height: 1;
  border-radius: 3px;
  padding: 7px 8px
}
.uppy-StatusBar-actionBtn--done:focus {
  outline: none
}
.uppy-StatusBar-actionBtn--done::-moz-focus-inner {
  border: 0
}
.uppy-StatusBar-actionBtn--done:hover {
  color: #1b5dab
}
.uppy-StatusBar-actionBtn--done:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--done:focus {
  background-color: #333
}
[data-uppy-theme=dark] .uppy-StatusBar-actionBtn--done {
  color: #02baf2
}
.uppy-size--md .uppy-StatusBar-actionBtn--done {
  font-size: 14px
}
.uppy-StatusBar-details {
  line-height: 12px;
  width: 13px;
  height: 13px;
  display: inline-block;
  vertical-align: middle;
  color: #fff;
  background-color: #939393;
  border-radius: 50%;
  position: relative;
  top: 0;
  left: 2px;
  font-size: 10px;
  font-weight: 600;
  text-align: center;
  cursor: help
}
.uppy-StatusBar-details:after {
  line-height: 1.3;
  word-wrap: break-word
}
.uppy-StatusBar-spinner {
  animation-name: uppy-StatusBar-spinnerAnimation;
  animation-duration: 1s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
  margin-right: 10px;
  fill: #2275d7
}
.uppy-StatusBar.is-postprocessing .uppy-StatusBar-spinner, .uppy-StatusBar.is-preprocessing .uppy-StatusBar-spinner {
  fill: #f6a623
}
@keyframes uppy-StatusBar-spinnerAnimation {
  0% {
    transform: rotate(0deg)
  }
  to {
    transform: rotate(1turn)
  }
}
.uppy-ProviderBrowser-viewType--grid ul.uppy-ProviderBrowser-list {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: row;
  flex-direction: row;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -ms-flex-align: start;
  align-items: flex-start;
  padding: 6px
}
.uppy-ProviderBrowser-viewType--grid ul.uppy-ProviderBrowser-list:after {
  content: "";
  -ms-flex: auto;
  flex: auto
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem {
  width: 50%;
  position: relative;
  margin: 0
}
.uppy-size--md .uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem {
  width: 33.3333%
}
.uppy-size--lg .uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem {
  width: 25%
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem:before {
  content: "";
  padding-top: 100%;
  display: block
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--selected img, .uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--selected svg {
  opacity: .85
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--disabled {
  opacity: .5
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--noPreview .uppy-ProviderBrowserItem-inner {
  background-color: hsla(0, 0%, 57.6%, .2)
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--noPreview .uppy-ProviderBrowserItem-inner {
  background-color: hsla(0, 0%, 91.8%, .2)
}
.uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--noPreview svg {
  fill: rgba(0, 0, 0, .7);
  width: 30%;
  height: 30%
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--grid li.uppy-ProviderBrowserItem--noPreview svg {
  fill: hsla(0, 0%, 100%, .8)
}
.uppy-ProviderBrowser-viewType--grid button.uppy-ProviderBrowserItem-inner {
  border-radius: 4px;
  overflow: hidden;
  position: absolute;
  top: 7px;
  left: 7px;
  right: 7px;
  bottom: 7px;
  text-align: center;
  width: calc(100% - 14px);
  height: calc(100% - 14px)
}
.uppy-ProviderBrowser-viewType--grid button.uppy-ProviderBrowserItem-inner:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .9)
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--grid button.uppy-ProviderBrowserItem-inner {
  box-shadow: 0 0 0 3px rgba(170, 225, 255, .7)
}
.uppy-ProviderBrowser-viewType--grid button.uppy-ProviderBrowserItem-inner img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 4px
}
.uppy-ProviderBrowser-viewType--grid .uppy-ProviderBrowserItem-fakeCheckbox {
  position: absolute;
  top: 16px;
  right: 16px;
  width: 26px;
  height: 26px;
  background-color: #2275d7;
  border-radius: 50%;
  z-index: 1002;
  opacity: 0
}
.uppy-ProviderBrowser-viewType--grid .uppy-ProviderBrowserItem-fakeCheckbox:after {
  width: 12px;
  height: 7px;
  left: 7px;
  top: 8px
}
.uppy-ProviderBrowser-viewType--grid .uppy-ProviderBrowserItem-fakeCheckbox--is-checked {
  opacity: 1
}
.uppy-ProviderBrowser-viewType--list {
  background-color: #fff
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--list {
  background-color: #1f1f1f
}
.uppy-ProviderBrowser-viewType--list li.uppy-ProviderBrowserItem {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding: 7px 15px;
  margin: 0
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--list li.uppy-ProviderBrowserItem {
  color: #eaeaea
}
.uppy-ProviderBrowser-viewType--list li.uppy-ProviderBrowserItem--disabled {
  opacity: .6
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox {
  margin-right: 15px;
  height: 17px;
  width: 17px;
  border-radius: 3px;
  background-color: #fff;
  border: 1px solid #cfcfcf
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox:focus {
  border: 1px solid #2275d7;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .25);
  outline: none
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox:after {
  opacity: 0;
  height: 5px;
  width: 9px;
  left: 3px;
  top: 4px
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox:focus {
  border-color: rgba(2, 186, 242, .7);
  box-shadow: 0 0 0 3px rgba(2, 186, 242, .2)
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox--is-checked {
  background-color: #2275d7;
  border-color: #2275d7
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-fakeCheckbox--is-checked:after {
  opacity: 1
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-inner {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding: 2px
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-inner:focus {
  outline: none;
  text-decoration: underline
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-inner img, .uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-inner svg {
  margin-right: 8px;
  max-width: 20px;
  max-height: 20px
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-inner span {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem--disabled .uppy-ProviderBrowserItem-inner {
  cursor: default
}
.uppy-ProviderBrowser-viewType--list .uppy-ProviderBrowserItem-iconWrap {
  width: 20px;
  margin-right: 7px
}
.uppy-ProviderBrowserItem-fakeCheckbox {
  position: relative;
  cursor: pointer;
  -ms-flex-negative: 0;
  flex-shrink: 0
}
.uppy-ProviderBrowserItem-fakeCheckbox:disabled {
  cursor: default
}
.uppy-ProviderBrowserItem-fakeCheckbox:after {
  content: "";
  position: absolute;
  cursor: pointer;
  border-left: 2px solid #eaeaea;
  border-bottom: 2px solid #eaeaea;
  transform: rotate(-45deg)
}
.uppy-ProviderBrowserItem-fakeCheckbox:disabled:after {
  cursor: default
}
[data-uppy-theme=dark] .uppy-ProviderBrowserItem-fakeCheckbox {
  background-color: #1f1f1f;
  border-color: #939393
}
[data-uppy-theme=dark] .uppy-ProviderBrowserItem-fakeCheckbox--is-checked {
  background-color: #333
}
.uppy-SearchProvider {
  width: 100%;
  height: 100%;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex: 1;
  flex: 1
}
[data-uppy-theme=dark] .uppy-SearchProvider {
  background-color: #1f1f1f
}
.uppy-SearchProvider-input {
  width: 90%;
  max-width: 650px;
  margin-bottom: 15px
}
.uppy-size--md .uppy-SearchProvider-input {
  margin-bottom: 20px
}
.uppy-SearchProvider-searchButton {
  padding: 13px 25px
}
.uppy-size--md .uppy-SearchProvider-searchButton {
  padding: 13px 30px
}
.uppy-DashboardContent-panelBody {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex: 1;
  flex: 1
}
[data-uppy-theme=dark] .uppy-DashboardContent-panelBody {
  background-color: #1f1f1f
}
.uppy-Provider-auth, .uppy-Provider-empty, .uppy-Provider-error, .uppy-Provider-loading {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-flow: column wrap;
  flex-flow: column wrap;
  -ms-flex: 1;
  flex: 1;
  color: #939393
}
.uppy-Provider-empty {
  color: #939393
}
.uppy-Provider-authIcon svg {
  width: 100px;
  height: 75px;
  margin-bottom: 15px
}
.uppy-Provider-authTitle {
  font-size: 17px;
  line-height: 1.4;
  font-weight: 400;
  margin-bottom: 30px;
  padding: 0 15px;
  max-width: 500px;
  text-align: center;
  color: #757575
}
.uppy-size--md .uppy-Provider-authTitle {
  font-size: 20px
}
[data-uppy-theme=dark] .uppy-Provider-authTitle {
  color: #cfcfcf
}
.uppy-Provider-breadcrumbs {
  -ms-flex: 1;
  flex: 1;
  color: #525252;
  font-size: 12px;
  margin-bottom: 10px;
  text-align: left
}
.uppy-size--md .uppy-Provider-breadcrumbs {
  margin-bottom: 0
}
[data-uppy-theme=dark] .uppy-Provider-breadcrumbs {
  color: #eaeaea
}
.uppy-Provider-breadcrumbsIcon {
  display: inline-block;
  color: #525252;
  vertical-align: middle;
  margin-right: 4px;
  line-height: 1
}
.uppy-Provider-breadcrumbsIcon svg {
  width: 13px;
  height: 13px;
  fill: #525252
}
.uppy-Provider-breadcrumbs button {
  display: inline-block;
  line-height: inherit;
  padding: 4px;
  border-radius: 3px
}
.uppy-Provider-breadcrumbs button:focus {
  outline: none
}
.uppy-Provider-breadcrumbs button::-moz-focus-inner {
  border: 0
}
.uppy-Provider-breadcrumbs button:hover {
  color: #1b5dab
}
.uppy-Provider-breadcrumbs button:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-Provider-breadcrumbs button:focus {
  background-color: #333
}
.uppy-Provider-breadcrumbs button:hover {
  text-decoration: underline;
  cursor: pointer
}
[data-uppy-theme=dark] .uppy-Provider-breadcrumbs button {
  color: #eaeaea
}
.uppy-ProviderBrowser {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex: 1;
  flex: 1;
  font-size: 14px;
  font-weight: 400;
  height: 100%
}
.uppy-ProviderBrowser-user {
  margin: 0 8px 0 0;
  font-weight: 500;
  color: #333
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-user {
  color: #eaeaea
}
.uppy-ProviderBrowser-user:after {
  content: "·";
  position: relative;
  left: 4px;
  color: #939393;
  font-weight: 400
}
.uppy-ProviderBrowser-header {
  z-index: 1001;
  border-bottom: 1px solid #eaeaea;
  position: relative
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-header {
  border-bottom: 1px solid #333
}
.uppy-ProviderBrowser-headerBar {
  padding: 7px 15px;
  background-color: #fafafa;
  z-index: 1001;
  color: #757575;
  line-height: 1.4;
  font-size: 12px
}
.uppy-size--md .uppy-ProviderBrowser-headerBar {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-headerBar {
  background-color: #1f1f1f
}
.uppy-ProviderBrowser-headerBar--simple {
  text-align: center;
  display: block;
  -ms-flex-pack: center;
  justify-content: center
}
.uppy-ProviderBrowser-headerBar--simple .uppy-Provider-breadcrumbsWrap {
  -ms-flex: none;
  flex: none;
  display: inline-block;
  vertical-align: middle
}
.uppy-ProviderBrowser-search {
  width: 100%;
  background-color: #fff;
  position: relative;
  height: 30px;
  margin-top: 10px;
  margin-bottom: 5px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-search {
  background-color: #1f1f1f
}
.uppy-ProviderBrowser-searchIcon {
  position: absolute;
  width: 12px;
  height: 12px;
  left: 16px;
  z-index: 1002;
  color: #bbb
}
.uppy-ProviderBrowser-searchInput {
  width: 100%;
  height: 30px;
  background-color: transparent;
  outline: 0;
  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
  font-size: 12px;
  line-height: 1.4;
  border: 0;
  margin: 0 8px;
  padding-left: 27px;
  z-index: 1001;
  border-radius: 4px
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-searchInput {
  background-color: #1f1f1f;
  color: #eaeaea
}
.uppy-ProviderBrowser-searchInput:focus {
  outline: 0;
  background-color: #f4f4f4
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-searchInput:focus {
  background-color: #333
}
.uppy-ProviderBrowser-searchClose {
  position: absolute;
  width: 22px;
  height: 22px;
  padding: 6px;
  right: 12px;
  top: 4px;
  z-index: 1002;
  color: #939393;
  cursor: pointer
}
.uppy-ProviderBrowser-searchClose:hover {
  color: #757575
}
.uppy-ProviderBrowser-searchClose svg {
  vertical-align: text-top
}
.uppy-ProviderBrowser-searchInput:-ms-input-placeholder {
  color: #939393;
  opacity: 1
}
.uppy-ProviderBrowser-searchInput::placeholder {
  color: #939393;
  opacity: 1
}
.uppy-ProviderBrowser-userLogout {
  cursor: pointer;
  line-height: inherit;
  color: #2275d7;
  padding: 4px;
  border-radius: 3px
}
.uppy-ProviderBrowser-userLogout:focus {
  outline: none
}
.uppy-ProviderBrowser-userLogout::-moz-focus-inner {
  border: 0
}
.uppy-ProviderBrowser-userLogout:hover {
  color: #1b5dab
}
.uppy-ProviderBrowser-userLogout:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-userLogout:focus {
  background-color: #333
}
.uppy-ProviderBrowser-userLogout:hover {
  text-decoration: underline
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-userLogout {
  color: #eaeaea
}
.uppy-ProviderBrowser-body {
  -ms-flex: 1;
  flex: 1;
  position: relative
}
.uppy-ProviderBrowser-list {
  -ms-flex: 1;
  flex: 1;
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
  background-color: #fff;
  border-spacing: 0;
  overflow-x: hidden;
  overflow-y: auto;
  -webkit-overflow-scrolling: touch;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  list-style: none;
  margin: 0;
  padding: 0
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-list {
  background-color: #1f1f1f
}
.uppy-ProviderBrowser-list:focus {
  outline: none
}
.uppy-ProviderBrowserItem-inner {
  cursor: pointer;
  font-weight: 500;
  font-size: 13px
}
.uppy-ProviderBrowser-footer {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  background-color: #fff;
  height: 65px;
  border-top: 1px solid #eaeaea;
  padding: 0 15px
}
.uppy-ProviderBrowser-footer button {
  margin-right: 8px
}
[data-uppy-theme=dark] .uppy-ProviderBrowser-footer {
  background-color: #1f1f1f;
  border-top: 1px solid #333
}
.uppy-Dashboard-Item-previewInnerWrap {
  width: 100%;
  height: 100%;
  overflow: hidden;
  position: relative;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-direction: column;
  flex-direction: column;
  box-shadow: 0 0 2px 0 rgba(0, 0, 0, .4);
  border-radius: 3px
}
.uppy-size--md .uppy-Dashboard-Item-previewInnerWrap {
  box-shadow: 0 1px 2px rgba(0, 0, 0, .15)
}
.uppy-Dashboard-Item-previewInnerWrap:after {
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, .65);
  display: none;
  z-index: 1001
}
.uppy-Dashboard-Item-previewLink {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  z-index: 1002
}
.uppy-Dashboard-Item-previewLink:focus {
  box-shadow: inset 0 0 0 3px #76abe9
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-previewLink:focus {
  box-shadow: inset 0 0 0 3px #016c8d
}
.uppy-Dashboard-Item-preview img.uppy-Dashboard-Item-previewImg {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transform: translateZ(0);
  border-radius: 3px
}
.uppy-Dashboard-Item-progress {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 1002;
  color: #fff;
  text-align: center;
  width: 120px;
  transition: all .35 ease
}
.uppy-Dashboard-Item-progressIndicator {
  display: inline-block;
  width: 38px;
  height: 38px;
  opacity: .9
}
.uppy-size--md .uppy-Dashboard-Item-progressIndicator {
  width: 55px;
  height: 55px
}
button.uppy-Dashboard-Item-progressIndicator {
  cursor: pointer
}
button.uppy-Dashboard-Item-progressIndicator:focus {
  outline: none
}
button.uppy-Dashboard-Item-progressIndicator::-moz-focus-inner {
  border: 0
}
button.uppy-Dashboard-Item-progressIndicator:focus .uppy-Dashboard-Item-progressIcon--bg, button.uppy-Dashboard-Item-progressIndicator:focus .uppy-Dashboard-Item-progressIcon--retry {
  fill: #76abe9
}
.uppy-Dashboard-Item-progressIcon--circle {
  width: 100%;
  height: 100%
}
.uppy-Dashboard-Item-progressIcon--bg {
  stroke: hsla(0, 0%, 100%, .4)
}
.uppy-Dashboard-Item-progressIcon--progress {
  stroke: #fff;
  transition: stroke-dashoffset .5s ease-out
}
.uppy-Dashboard-Item-progressIcon--play {
  stroke: #fff;
  fill: #fff;
  transition: all .2s
}
.uppy-Dashboard-Item-progressIcon--cancel {
  fill: #fff;
  transition: all .2s
}
.uppy-Dashboard-Item-progressIcon--pause {
  stroke: #fff;
  fill: #fff;
  transition: all .2s
}
.uppy-Dashboard-Item-progressIcon--check {
  fill: #fff;
  transition: all .2s
}
.uppy-Dashboard-Item-progressIcon--retry {
  fill: #fff
}
.uppy-Dashboard-Item.is-complete .uppy-Dashboard-Item-progress {
  transform: none;
  top: -9px;
  right: -8px;
  left: auto;
  width: auto
}
.uppy-Dashboard-Item.is-error .uppy-Dashboard-Item-progressIndicator {
  width: 18px;
  height: 18px
}
.uppy-size--md .uppy-Dashboard-Item.is-error .uppy-Dashboard-Item-progressIndicator {
  width: 28px;
  height: 28px
}
.uppy-Dashboard-Item.is-complete .uppy-Dashboard-Item-progressIndicator {
  width: 18px;
  height: 18px;
  opacity: 1
}
.uppy-size--md .uppy-Dashboard-Item.is-complete .uppy-Dashboard-Item-progressIndicator {
  width: 22px;
  height: 22px
}
.uppy-Dashboard-Item.is-processing .uppy-Dashboard-Item-progress {
  opacity: 0
}
.uppy-Dashboard-Item-fileInfo {
  padding-right: 5px
}
.uppy-Dashboard-Item-name {
  font-size: 12px;
  line-height: 1.3;
  font-weight: 500;
  margin-bottom: 4px;
  word-break: break-all;
  word-wrap: anywhere
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-name {
  color: #eaeaea
}
.uppy-Dashboard-Item-status {
  font-size: 11px;
  line-height: 1.3;
  font-weight: 400;
  color: #757575
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-status {
  color: #bbb
}
.uppy-Dashboard-Item-statusSize {
  display: inline-block;
  vertical-align: bottom;
  text-transform: uppercase
}
.uppy-Dashboard-Item-sourceIcon {
  display: none;
  vertical-align: bottom;
  color: #bbb
}
.uppy-Dashboard-Item-sourceIcon:not(:first-child) {
  position: relative;
  margin-left: 14px
}
.uppy-Dashboard-Item-sourceIcon svg, .uppy-Dashboard-Item-sourceIcon svg * {
  max-width: 100%;
  max-height: 100%;
  display: inline-block;
  vertical-align: text-bottom;
  overflow: hidden;
  fill: currentColor;
  width: 11px;
  height: 12px
}
.uppy-Dashboard-Item-action {
  cursor: pointer;
  color: #939393
}
.uppy-Dashboard-Item-action:focus {
  outline: none
}
.uppy-Dashboard-Item-action::-moz-focus-inner {
  border: 0
}
.uppy-Dashboard-Item-action:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
.uppy-Dashboard-Item-action:hover {
  opacity: 1;
  color: #1f1f1f
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action {
  color: #cfcfcf
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action:hover {
  color: #eaeaea
}
.uppy-Dashboard-Item-action--remove {
  color: #1f1f1f;
  opacity: .95
}
.uppy-Dashboard-Item-action--remove:hover {
  opacity: 1;
  color: #000
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action--remove {
  color: #525252
}
[data-uppy-theme=dark] .uppy-Dashboard-Item-action--remove:hover {
  color: #333
}
.uppy-Dashboard:not(.uppy-size--md) .uppy-Dashboard-Item-actionWrapper {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center
}
.uppy-Dashboard:not(.uppy-size--md) .uppy-Dashboard-Item-action {
  width: 22px;
  height: 22px;
  padding: 3px;
  margin-left: 3px
}
.uppy-Dashboard:not(.uppy-size--md) .uppy-Dashboard-Item-action:focus {
  border-radius: 3px
}
.uppy-size--md .uppy-Dashboard-Item-action--copyLink, .uppy-size--md .uppy-Dashboard-Item-action--edit {
  width: 16px;
  height: 16px;
  padding: 0
}
.uppy-size--md .uppy-Dashboard-Item-action--copyLink:focus, .uppy-size--md .uppy-Dashboard-Item-action--edit:focus {
  border-radius: 3px
}
.uppy-size--md .uppy-Dashboard-Item-action--remove {
  z-index: 1002;
  position: absolute;
  top: -8px;
  right: -8px;
  width: 18px;
  height: 18px;
  padding: 0
}
.uppy-size--md .uppy-Dashboard-Item-action--remove:focus {
  border-radius: 50%
}
.uppy-Dashboard-Item {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  border-bottom: 1px solid #eaeaea;
  padding: 10px 0 10px 10px
}
[data-uppy-theme=dark] .uppy-Dashboard-Item {
  border-bottom: 1px solid #333
}
.uppy-size--md .uppy-Dashboard-Item {
  position: relative;
  display: block;
  float: left;
  margin: 5px 15px;
  padding: 0;
  width: calc(33.333% - 30px);
  height: 215px;
  border-bottom: 0
}
.uppy-size--lg .uppy-Dashboard-Item {
  margin: 5px 15px;
  width: calc(25% - 30px);
  height: 190px
}
.uppy-size--xl .uppy-Dashboard-Item {
  width: calc(20% - 30px);
  height: 210px
}
.uppy-Dashboard-Item-preview {
  position: relative
}
.uppy-Dashboard:not(.uppy-size--md) .uppy-Dashboard-Item-preview {
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-positive: 0;
  flex-grow: 0;
  width: 50px;
  height: 50px
}
.uppy-size--md .uppy-Dashboard-Item-preview {
  width: 100%;
  height: 140px
}
.uppy-size--lg .uppy-Dashboard-Item-preview {
  height: 120px
}
.uppy-size--xl .uppy-Dashboard-Item-preview {
  height: 140px
}
.uppy-Dashboard-Item-fileInfoAndButtons {
  -ms-flex-positive: 1;
  flex-grow: 1;
  padding-right: 8px;
  padding-left: 12px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: justify;
  justify-content: space-between
}
.uppy-size--md .uppy-Dashboard-Item-fileInfoAndButtons {
  -ms-flex-align: start;
  align-items: flex-start;
  width: 100%;
  padding: 9px 0 0
}
.uppy-Dashboard-Item-fileInfo {
  -ms-flex-positive: 1;
  flex-grow: 1;
  -ms-flex-negative: 1;
  flex-shrink: 1
}
.uppy-Dashboard-Item-actionWrapper {
  -ms-flex-positive: 0;
  flex-grow: 0;
  -ms-flex-negative: 0;
  flex-shrink: 0
}
.uppy-Dashboard-Item.is-error .uppy-Dashboard-Item-previewInnerWrap:after, .uppy-Dashboard-Item.is-inprogress .uppy-Dashboard-Item-previewInnerWrap:after {
  display: block
}
.uppy-Dashboard-Item.is-inprogress:not(.is-resumable) .uppy-Dashboard-Item-action--remove {
  display: none
}
.uppy-Dashboard-Item-errorDetails {
  line-height: 12px;
  width: 12px;
  height: 12px;
  display: inline-block;
  vertical-align: middle;
  color: #fff;
  background-color: #939393;
  border-radius: 50%;
  position: relative;
  top: -1px;
  left: 6px;
  font-size: 8px;
  font-weight: 600;
  text-align: center;
  cursor: help
}
.uppy-Dashboard-Item-errorDetails:after {
  line-height: 1.3;
  word-wrap: break-word
}
.uppy-Dashboard-FileCard {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 1005;
  box-shadow: 0 0 10px 4px rgba(0, 0, 0, .1);
  background-color: #fff;
  border-radius: 5px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column
}
.uppy-Dashboard-FileCard .uppy-DashboardContent-bar {
  border-top-left-radius: 5px;
  border-top-right-radius: 5px
}
.uppy-Dashboard-FileCard .uppy-Dashboard-FileCard-actions {
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px
}
.uppy-Dashboard-FileCard-inner {
  height: 100%;
  -ms-flex-positive: 1;
  flex-grow: 1;
  -ms-flex-direction: column;
  flex-direction: column
}
.uppy-Dashboard-FileCard-inner, .uppy-Dashboard-FileCard-preview {
  -ms-flex-negative: 1;
  flex-shrink: 1;
  min-height: 0;
  display: -ms-flexbox;
  display: flex
}
.uppy-Dashboard-FileCard-preview {
  height: 60%;
  -ms-flex-positive: 0;
  flex-grow: 0;
  border-bottom: 1px solid #eaeaea;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  position: relative
}
[data-uppy-theme=dark] .uppy-Dashboard-FileCard-preview {
  background-color: #333;
  border-bottom: 0
}
.uppy-Dashboard-FileCard-preview img.uppy-Dashboard-Item-previewImg {
  max-width: 90%;
  max-height: 90%;
  object-fit: cover;
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  border-radius: 3px;
  box-shadow: 0 3px 20px rgba(0, 0, 0, .15)
}
.uppy-Dashboard-FileCard-edit {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 13px;
  background-color: rgba(0, 0, 0, .5);
  color: #fff;
  padding: 7px 15px;
  border-radius: 50px
}
.uppy-Dashboard-FileCard-edit:focus {
  outline: none
}
.uppy-Dashboard-FileCard-edit::-moz-focus-inner {
  border: 0
}
.uppy-Dashboard-FileCard-edit:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
.uppy-Dashboard-FileCard-edit:hover {
  background-color: rgba(0, 0, 0, .8)
}
.uppy-Dashboard-FileCard-info {
  height: 40%;
  -ms-flex-positive: 0;
  flex-grow: 0;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  padding: 30px 20px 20px;
  overflow-y: auto;
  -webkit-overflow-scrolling: touch
}
[data-uppy-theme=dark] .uppy-Dashboard-FileCard-info {
  background-color: #1f1f1f
}
.uppy-Dashboard-FileCard-fieldset {
  font-size: 0;
  border: 0;
  padding: 0;
  max-width: 640px;
  margin: auto auto 12px
}
.uppy-Dashboard-FileCard-label {
  display: inline-block;
  vertical-align: middle;
  width: 22%;
  font-size: 12px;
  color: #525252
}
.uppy-size--md .uppy-Dashboard-FileCard-label {
  font-size: 14px
}
[data-uppy-theme=dark] .uppy-Dashboard-FileCard-label {
  color: #eaeaea
}
.uppy-Dashboard-FileCard-input {
  display: inline-block;
  vertical-align: middle;
  width: 78%
}
.uppy-Dashboard-FileCard-actions {
  height: 55px;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-positive: 0;
  flex-grow: 0;
  border-top: 1px solid #eaeaea;
  padding: 0 15px;
  background-color: #fafafa;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center
}
.uppy-size--md .uppy-Dashboard-FileCard-actions {
  height: 65px
}
[data-uppy-theme=dark] .uppy-Dashboard-FileCard-actions {
  border-top: 1px solid #333;
  background-color: #1f1f1f
}
.uppy-Dashboard-FileCard-actionsBtn {
  margin-right: 10px
}
.uppy-transition-slideDownUp-enter {
  opacity: .01;
  transform: translate3d(0, -105%, 0);
  transition: transform .25s ease-in-out, opacity .25s ease-in-out
}
.uppy-transition-slideDownUp-enter.uppy-transition-slideDownUp-enter-active {
  opacity: 1;
  transform: translateZ(0)
}
.uppy-transition-slideDownUp-leave {
  opacity: 1;
  transform: translateZ(0);
  transition: transform .25s ease-in-out, opacity .25s ease-in-out
}
.uppy-transition-slideDownUp-leave.uppy-transition-slideDownUp-leave-active {
  opacity: .01;
  transform: translate3d(0, -105%, 0)
}
@keyframes uppy-Dashboard-fadeIn {
  0% {
    opacity: 0
  }
  to {
    opacity: 1
  }
}
@keyframes uppy-Dashboard-fadeOut {
  0% {
    opacity: 1
  }
  to {
    opacity: 0
  }
}
@keyframes uppy-Dashboard-slideDownAndFadeIn {
  0% {
    transform: translate3d(-50%, -70%, 0);
    opacity: 0
  }
  to {
    transform: translate3d(-50%, -50%, 0);
    opacity: 1
  }
}
@keyframes uppy-Dashboard-slideDownAndFadeIn--small {
  0% {
    transform: translate3d(0, -20%, 0);
    opacity: 0
  }
  to {
    transform: translateZ(0);
    opacity: 1
  }
}
@keyframes uppy-Dashboard-slideUpFadeOut {
  0% {
    transform: translate3d(-50%, -50%, 0);
    opacity: 1
  }
  to {
    transform: translate3d(-50%, -70%, 0);
    opacity: 0
  }
}
@keyframes uppy-Dashboard-slideUpFadeOut--small {
  0% {
    transform: translateZ(0);
    opacity: 1
  }
  to {
    transform: translate3d(0, -20%, 0);
    opacity: 0
  }
}
.uppy-Dashboard--modal {
  z-index: 1001
}
.uppy-Dashboard--modal[aria-hidden=true] {
  display: none
}
.uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose > .uppy-Dashboard-inner {
  animation: uppy-Dashboard-slideDownAndFadeIn--small .3s cubic-bezier(0, 0, .2, 1)
}
@media only screen and (min-width:820px) {
  .uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose > .uppy-Dashboard-inner {
    animation: uppy-Dashboard-slideDownAndFadeIn .3s cubic-bezier(0, 0, .2, 1)
  }
}
.uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose > .uppy-Dashboard-overlay {
  animation: uppy-Dashboard-fadeIn .3s cubic-bezier(0, 0, .2, 1)
}
.uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose.uppy-Dashboard--isClosing > .uppy-Dashboard-inner {
  animation: uppy-Dashboard-slideUpFadeOut--small .3s cubic-bezier(0, 0, .2, 1)
}
@media only screen and (min-width:820px) {
  .uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose.uppy-Dashboard--isClosing > .uppy-Dashboard-inner {
    animation: uppy-Dashboard-slideUpFadeOut .3s cubic-bezier(0, 0, .2, 1)
  }
}
.uppy-Dashboard--modal.uppy-Dashboard--animateOpenClose.uppy-Dashboard--isClosing > .uppy-Dashboard-overlay {
  animation: uppy-Dashboard-fadeOut .3s cubic-bezier(0, 0, .2, 1)
}
.uppy-Dashboard-isFixed {
  overflow: hidden;
  height: 100vh
}
.uppy-Dashboard--modal .uppy-Dashboard-overlay {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, .5);
  z-index: 1001
}
.uppy-Dashboard-inner {
  position: relative;
  background-color: #fafafa;
  max-width: 100%;
  max-height: 100%;
  outline: none;
  border: 1px solid #eaeaea;
  border-radius: 5px
}
.uppy-size--md .uppy-Dashboard-inner {
  min-height: auto
}
@media only screen and (min-width:820px) {
  .uppy-Dashboard-inner {
    width: 750px;
    height: 550px
  }
}
.uppy-Dashboard--modal .uppy-Dashboard-inner {
  z-index: 1002
}
[data-uppy-theme=dark] .uppy-Dashboard-inner {
  background-color: #1f1f1f
}
.uppy-Dashboard-innerWrap {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  height: 100%;
  overflow: hidden;
  position: relative;
  border-radius: 5px;
  opacity: 0
}
.uppy-Dashboard--isInnerWrapVisible .uppy-Dashboard-innerWrap {
  opacity: 1
}
.uppy-Dashboard--modal .uppy-Dashboard-inner {
  position: fixed;
  top: 35px;
  left: 15px;
  right: 15px;
  bottom: 15px;
  border: none
}
@media only screen and (min-width:820px) {
  .uppy-Dashboard--modal .uppy-Dashboard-inner {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    box-shadow: 0 5px 15px 4px rgba(0, 0, 0, .15)
  }
}
.uppy-Dashboard-close {
  display: block;
  position: absolute;
  top: -33px;
  right: -2px;
  cursor: pointer;
  color: hsla(0, 0%, 100%, .9);
  font-size: 27px;
  z-index: 1005
}
.uppy-Dashboard-close:focus {
  outline: none
}
.uppy-Dashboard-close::-moz-focus-inner {
  border: 0
}
.uppy-Dashboard-close:focus {
  color: #8cb8ed
}
@media only screen and (min-width:820px) {
  .uppy-Dashboard-close {
    font-size: 35px;
    top: -10px;
    right: -35px
  }
}
.uppy-Dashboard-AddFiles {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-direction: column;
  flex-direction: column;
  height: 100%;
  position: relative;
  text-align: center
}
[data-uppy-drag-drop-supported=true] .uppy-Dashboard-AddFiles {
  margin: 7px;
  height: calc(100% - 14px);
  border-radius: 3px;
  border: 1px dashed #dfdfdf
}
.uppy-Dashboard-AddFilesPanel .uppy-Dashboard-AddFiles {
  border: none;
  height: calc(100% - 54px)
}
.uppy-Dashboard--modal .uppy-Dashboard-AddFiles {
  border-color: #cfcfcf
}
[data-uppy-theme=dark] .uppy-Dashboard-AddFiles {
  border-color: #757575
}
.uppy-Dashboard-AddFiles-info {
  padding-top: 15px;
  padding-bottom: 15px;
  margin-top: auto;
  display: none
}
.uppy-size--height-md .uppy-Dashboard-AddFiles-info {
  display: block
}
.uppy-size--md .uppy-Dashboard-AddFiles-info {
  position: absolute;
  bottom: 25px;
  left: 0;
  right: 0;
  padding-top: 30px;
  padding-bottom: 0
}
[data-uppy-num-acquirers="0"] .uppy-Dashboard-AddFiles-info {
  margin-top: 0
}
.uppy-Dashboard-browse {
  cursor: pointer;
  color: rgba(34, 117, 215, .9)
}
.uppy-Dashboard-browse:focus {
  outline: none
}
.uppy-Dashboard-browse::-moz-focus-inner {
  border: 0
}
.uppy-Dashboard-browse:focus, .uppy-Dashboard-browse:hover {
  border-bottom: 1px solid #2275d7
}
[data-uppy-theme=dark] .uppy-Dashboard-browse {
  color: rgba(2, 186, 242, .9)
}
[data-uppy-theme=dark] .uppy-Dashboard-browse:focus, [data-uppy-theme=dark] .uppy-Dashboard-browse:hover {
  border-bottom: 1px solid #02baf2
}
.uppy-Dashboard-browseBtn {
  display: block;
  font-size: 14px;
  font-weight: 500;
  margin-top: 8px;
  margin-bottom: 5px;
  width: 100%
}
.uppy-size--md .uppy-Dashboard-browseBtn {
  font-size: 15px;
  width: auto;
  margin: 15px auto;
  padding: 13px 44px
}
.uppy-Dashboard-AddFiles-list {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex: 1;
  flex: 1;
  overflow-y: auto;
  -webkit-overflow-scrolling: touch;
  margin-top: 2px;
  padding: 2px 0;
  width: 100%
}
.uppy-size--md .uppy-Dashboard-AddFiles-list {
  -ms-flex-direction: row;
  flex-direction: row;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -ms-flex-pack: center;
  justify-content: center;
  max-width: 600px;
  overflow-y: visible;
  margin-top: 15px;
  padding-top: 0;
  -ms-flex: none;
  flex: none
}
.uppy-DashboardTab {
  width: 100%;
  text-align: center;
  border-bottom: 1px solid #eaeaea
}
[data-uppy-theme=dark] .uppy-DashboardTab {
  border-bottom: 1px solid #333
}
.uppy-size--md .uppy-DashboardTab {
  display: inline-block;
  width: auto;
  margin-bottom: 10px;
  border-bottom: none
}
.uppy-DashboardTab-btn {
  width: 100%;
  height: 100%;
  cursor: pointer;
  border: 0;
  background-color: transparent;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  color: #525252;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: row;
  flex-direction: row;
  -ms-flex-align: center;
  align-items: center;
  padding: 12px 15px;
  line-height: 1;
  text-align: center
}
.uppy-DashboardTab-btn:focus {
  outline: none
}
.uppy-size--md .uppy-DashboardTab-btn {
  width: 86px;
  margin-right: 1px;
  -ms-flex-direction: column;
  flex-direction: column;
  padding: 10px 3px;
  border-radius: 5px
}
[data-uppy-theme=dark] .uppy-DashboardTab-btn {
  color: #eaeaea
}
.uppy-DashboardTab-btn::-moz-focus-inner {
  border: 0
}
.uppy-DashboardTab-btn:hover {
  background-color: #f1f3f6
}
[data-uppy-theme=dark] .uppy-DashboardTab-btn:hover {
  background-color: #333
}
.uppy-DashboardTab-btn:active, .uppy-DashboardTab-btn:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-DashboardTab-btn:active, [data-uppy-theme=dark] .uppy-DashboardTab-btn:focus {
  background-color: #525252
}
.uppy-DashboardTab-btn svg {
  max-width: 100%;
  max-height: 100%;
  display: inline-block;
  vertical-align: text-top;
  overflow: hidden;
  transition: transform .15s ease-in-out;
  margin-right: 10px
}
.uppy-size--md .uppy-DashboardTab-btn svg {
  margin-right: 0
}
.uppy-DashboardTab-name {
  font-size: 14px;
  font-weight: 500
}
.uppy-size--md .uppy-DashboardTab-name {
  font-size: 11px;
  line-height: 15px;
  margin-top: 8px;
  margin-bottom: 0
}
.uppy-DashboardTab svg {
  width: 23px;
  height: 23px;
  vertical-align: middle
}
.uppy-size--md .uppy-DashboardTab svg {
  width: 30px;
  height: 30px
}
.uppy-Dashboard-input {
  width: .1px;
  height: .1px;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  z-index: -1
}
.uppy-DashboardContent-bar {
  -ms-flex-negative: 0;
  flex-shrink: 0;
  height: 40px;
  width: 100%;
  padding: 0 10px;
  z-index: 1004;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: justify;
  justify-content: space-between;
  position: relative;
  border-bottom: 1px solid #eaeaea;
  background-color: #fafafa
}
.uppy-size--md .uppy-DashboardContent-bar {
  height: 50px;
  padding: 0 15px
}
[data-uppy-theme=dark] .uppy-DashboardContent-bar {
  background-color: #1f1f1f;
  border-bottom: 1px solid #333
}
.uppy-DashboardContent-title {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  text-align: center;
  font-size: 12px;
  line-height: 40px;
  font-weight: 500;
  width: 100%;
  max-width: 170px;
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow-x: hidden;
  margin: auto
}
.uppy-size--md .uppy-DashboardContent-title {
  font-size: 14px;
  line-height: 50px;
  max-width: 300px
}
[data-uppy-theme=dark] .uppy-DashboardContent-title {
  color: #eaeaea
}
.uppy-DashboardContent-back {
  background: none;
  -webkit-appearance: none;
  font-family: inherit;
  font-size: inherit;
  line-height: 1;
  border: 0;
  color: inherit;
  border-radius: 3px;
  font-size: 12px;
  font-weight: 400;
  cursor: pointer;
  color: #2275d7;
  padding: 7px 6px;
  margin: 0 0 0 -6px
}
.uppy-DashboardContent-back:focus {
  outline: none
}
.uppy-DashboardContent-back::-moz-focus-inner {
  border: 0
}
.uppy-DashboardContent-back:hover {
  color: #1b5dab
}
.uppy-DashboardContent-back:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-DashboardContent-back:focus {
  background-color: #333
}
.uppy-size--md .uppy-DashboardContent-back {
  font-size: 14px
}
[data-uppy-theme=dark] .uppy-DashboardContent-back {
  color: #02baf2
}
.uppy-DashboardContent-addMore {
  background: none;
  -webkit-appearance: none;
  font-family: inherit;
  font-size: inherit;
  line-height: 1;
  border: 0;
  color: inherit;
  border-radius: 3px;
  font-weight: 500;
  cursor: pointer;
  color: #2275d7;
  width: 29px;
  height: 29px;
  padding: 7px 8px;
  margin: 0 -5px 0 0
}
.uppy-DashboardContent-addMore:focus {
  outline: none
}
.uppy-DashboardContent-addMore::-moz-focus-inner {
  border: 0
}
.uppy-DashboardContent-addMore:hover {
  color: #1b5dab
}
.uppy-DashboardContent-addMore:focus {
  background-color: #eceef2
}
[data-uppy-theme=dark] .uppy-DashboardContent-addMore:focus {
  background-color: #333
}
.uppy-size--md .uppy-DashboardContent-addMore {
  font-size: 14px;
  width: auto;
  height: auto;
  margin-right: -8px
}
[data-uppy-theme=dark] .uppy-DashboardContent-addMore {
  color: #02baf2
}
.uppy-DashboardContent-addMore svg {
  vertical-align: baseline;
  margin-right: 4px
}
.uppy-size--md .uppy-DashboardContent-addMore svg {
  width: 11px;
  height: 11px
}
.uppy-DashboardContent-addMoreCaption {
  display: none
}
.uppy-size--md .uppy-DashboardContent-addMoreCaption {
  display: inline
}
.uppy-DashboardContent-panel {
  background-color: #f5f5f5;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex: 1;
  flex: 1
}
.uppy-Dashboard-AddFilesPanel, .uppy-DashboardContent-panel {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  overflow: hidden;
  z-index: 1005;
  border-radius: 5px;
  display: -ms-flexbox;
  display: flex
}
.uppy-Dashboard-AddFilesPanel {
  background: #fafafa;
  background: linear-gradient(0deg, #fafafa 35%, hsla(0, 0%, 98%, .85));
  box-shadow: 0 0 10px 5px rgba(0, 0, 0, .15);
  -ms-flex-direction: column;
  flex-direction: column
}
[data-uppy-theme=dark] .uppy-Dashboard-AddFilesPanel {
  background-color: #333;
  background: linear-gradient(0deg, #1f1f1f 35%, rgba(31, 31, 31, .85))
}
.uppy-Dashboard--isAddFilesPanelVisible .uppy-Dashboard-files {
  filter: blur(2px)
}
.uppy-Dashboard-progress {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 12%
}
.uppy-Dashboard-progressBarContainer.is-active {
  z-index: 1004;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%
}
.uppy-Dashboard-filesContainer {
  position: relative;
  overflow-y: hidden;
  margin: 0;
  -ms-flex: 1;
  flex: 1
}
.uppy-Dashboard-filesContainer:after {
  content: "";
  display: table;
  clear: both
}
.uppy-Dashboard-files {
  margin: 0;
  padding: 0 0 10px;
  overflow-y: auto;
  -webkit-overflow-scrolling: touch;
  -ms-flex: 1;
  flex: 1
}
.uppy-size--md .uppy-Dashboard-files {
  padding-top: 10px
}
.uppy-Dashboard-dropFilesHereHint {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  visibility: hidden;
  position: absolute;
  top: 7px;
  right: 7px;
  bottom: 7px;
  left: 7px;
  padding-top: 90px;
  border: 1px dashed #2275d7;
  border-radius: 3px;
  z-index: 2000;
  text-align: center;
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg width='48' height='48' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M24 1v1C11.85 2 2 11.85 2 24s9.85 22 22 22 22-9.85 22-22S36.15 2 24 2V1zm0 0V0c13.254 0 24 10.746 24 24S37.254 48 24 48 0 37.254 0 24 10.746 0 24 0v1zm7.707 19.293a.999.999 0 11-1.414 1.414L25 16.414V34a1 1 0 11-2 0V16.414l-5.293 5.293a.999.999 0 11-1.414-1.414l7-7a.999.999 0 011.414 0l7 7z' fill='%232275D7'/%3E%3C/svg%3E");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  color: #757575;
  font-size: 16px
}
[data-uppy-theme=dark] .uppy-Dashboard-dropFilesHereHint {
  color: #bbb;
  border-color: #02baf2;
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg width='48' height='48' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M24 1v1C11.85 2 2 11.85 2 24s9.85 22 22 22 22-9.85 22-22S36.15 2 24 2V1zm0 0V0c13.254 0 24 10.746 24 24S37.254 48 24 48 0 37.254 0 24 10.746 0 24 0v1zm7.707 19.293a.999.999 0 11-1.414 1.414L25 16.414V34a1 1 0 11-2 0V16.414l-5.293 5.293a.999.999 0 11-1.414-1.414l7-7a.999.999 0 011.414 0l7 7z' fill='%2302BAF2'/%3E%3C/svg%3E")
}
.uppy-Dashboard.uppy-Dashboard--isDraggingOver .uppy-Dashboard-dropFilesHereHint {
  visibility: visible
}
.uppy-Dashboard.uppy-Dashboard--isDraggingOver .uppy-Dashboard-files, .uppy-Dashboard.uppy-Dashboard--isDraggingOver .uppy-Dashboard-progressindicators, .uppy-Dashboard.uppy-Dashboard--isDraggingOver .uppy-DashboardContent-bar {
  opacity: .15
}
.uppy-Dashboard.uppy-Dashboard--isDraggingOver .uppy-Dashboard-AddFiles {
  opacity: .03
}
.uppy-Dashboard-dropFilesIcon {
  display: none;
  margin-bottom: 15px
}
.uppy-size--md.uppy-size--height-md .uppy-Dashboard-dropFilesIcon {
  display: block
}
.uppy-Dashboard-AddFiles-title {
  font-size: 17px;
  line-height: 1.35;
  font-weight: 500;
  color: #000;
  margin-top: 15px;
  margin-bottom: 5px;
  text-align: left;
  padding: 0 15px;
  width: 100%
}
.uppy-size--md .uppy-Dashboard-AddFiles-title {
  font-size: 25px;
  margin-top: 5px;
  font-weight: 400;
  text-align: center;
  max-width: 480px
}
[data-uppy-num-acquirers="0"] .uppy-Dashboard-AddFiles-title {
  text-align: center
}
[data-uppy-theme=dark] .uppy-Dashboard-AddFiles-title {
  color: #eaeaea
}
.uppy-Dashboard-AddFiles-title button {
  font-weight: 500
}
.uppy-size--md .uppy-Dashboard-AddFiles-title button {
  font-weight: 400
}
.uppy-Dashboard-note {
  font-size: 14px;
  line-height: 1.25;
  text-align: center;
  color: #757575;
  max-width: 350px;
  margin: auto;
  padding: 0 15px
}
.uppy-size--md .uppy-Dashboard-note {
  font-size: 15px;
  line-height: 1.35;
  max-width: 600px
}
[data-uppy-theme=dark] .uppy-Dashboard-note {
  color: #cfcfcf
}
a.uppy-Dashboard-poweredBy {
  display: inline-block;
  text-align: center;
  font-size: 11px;
  color: #939393;
  text-decoration: none;
  margin-top: 8px
}
.uppy-Dashboard-poweredByIcon {
  stroke: #939393;
  fill: none;
  margin-left: 1px;
  margin-right: 1px;
  position: relative;
  top: 1px;
  opacity: .9;
  vertical-align: text-top
}
.uppy-Dashboard-Item-previewIcon {
  width: 25px;
  height: 25px;
  z-index: 100;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%)
}
.uppy-size--md .uppy-Dashboard-Item-previewIcon {
  width: 38px;
  height: 38px
}
.uppy-Dashboard-Item-previewIcon svg {
  width: 100%;
  height: 100%
}
.uppy-Dashboard-Item-previewIconWrap {
  height: 76px;
  max-height: 75%;
  position: relative
}
.uppy-Dashboard-Item-previewIconBg {
  width: 100%;
  height: 100%;
  filter: drop-shadow(rgba(0, 0, 0, .1) 0 1px 1px)
}
.uppy-Dashboard-upload {
  position: relative;
  width: 50px;
  height: 50px
}
.uppy-size--md .uppy-Dashboard-upload {
  width: 60px;
  height: 60px
}
.uppy-Dashboard-upload .uppy-c-icon {
  position: relative;
  top: 1px;
  width: 50%
}
.uppy-Dashboard-uploadCount {
  position: absolute;
  top: -12px;
  right: -12px;
  background-color: #1bb240;
  color: #fff;
  border-radius: 50%;
  width: 16px;
  height: 16px;
  line-height: 16px;
  font-size: 8px
}
.uppy-size--md .uppy-Dashboard-uploadCount {
  width: 18px;
  height: 18px;
  line-height: 18px;
  font-size: 9px
}
.uppy-DragDrop-container {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  border-radius: 7px;
  background-color: #fff;
  cursor: pointer;
  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
  max-width: 100%
}
.uppy-DragDrop-container:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .4)
}
.uppy-DragDrop-container::-moz-focus-inner {
  border: 0
}
.uppy-DragDrop-inner {
  margin: 0;
  text-align: center;
  padding: 80px 20px;
  line-height: 1.4
}
.uppy-DragDrop-arrow {
  width: 60px;
  height: 60px;
  fill: #e0e0e0;
  margin-bottom: 17px
}
.uppy-DragDrop--isDragDropSupported {
  border: 2px dashed #adadad
}
.uppy-DragDrop--isDraggingOver {
  border: 2px dashed #2275d7;
  background: #eaeaea
}
.uppy-DragDrop--isDraggingOver .uppy-DragDrop-arrow {
  fill: #939393
}
.uppy-DragDrop-label {
  display: block;
  font-size: 1.15em;
  margin-bottom: 5px
}
.uppy-DragDrop-browse {
  color: #2275d7;
  cursor: pointer
}
.uppy-DragDrop-note {
  font-size: 1em;
  color: #adadad
}
.uppy-FileInput-container {
  margin-bottom: 15px
}
.uppy-FileInput-btn {
  background: none;
  -webkit-appearance: none;
  font-family: inherit;
  font-size: inherit;
  line-height: 1;
  margin: 0;
  color: inherit;
  font-family: sans-serif;
  font-size: .85em;
  padding: 10px 15px;
  color: #14457f;
  border: 1px solid #14457f;
  border-radius: 8px;
  cursor: pointer
}
.uppy-FileInput-btn:hover {
  background-color: #14457f;
  color: #fff
}
.uppy-ProgressBar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 3px;
  z-index: 10000;
  transition: height .2s
}
.uppy-ProgressBar[aria-hidden=true] {
  height: 0
}
.uppy-ProgressBar-inner {
  background-color: #2275d7;
  box-shadow: 0 0 10px rgba(34, 117, 215, .7);
  height: 100%;
  width: 0;
  transition: width .4s ease
}
.uppy-ProgressBar-percentage {
  display: none;
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: #fff
}
.uppy-Url {
  width: 100%;
  height: 100%;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex: 1;
  flex: 1
}
[data-uppy-theme=dark] .uppy-Url {
  background-color: #1f1f1f
}
.uppy-Url-input {
  width: 90%;
  max-width: 650px;
  margin-bottom: 15px
}
.uppy-size--md .uppy-Url-input {
  margin-bottom: 20px
}
.uppy-Url-importButton {
  padding: 13px 25px
}
.uppy-size--md .uppy-Url-importButton {
  padding: 13px 30px
}
.uppy-Webcam-container {
  width: 100%;
  height: 100%;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-direction: column;
  flex-direction: column
}
.uppy-Webcam-videoContainer {
  width: 100%;
  -ms-flex: 1;
  flex: 1;
  -ms-flex-positive: 1;
  flex-grow: 1;
  overflow: hidden;
  background-color: #333;
  text-align: center;
  position: relative
}
.uppy-Webcam-video {
  max-width: 100%;
  max-height: 100%;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto
}
.uppy-Webcam-video--mirrored {
  transform: scaleX(-1)
}
.uppy-Webcam-footer {
  width: 100%;
  min-height: 75px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding: 20px
}
.uppy-Webcam-videoSourceContainer {
  width: 100%;
  -ms-flex-positive: 0;
  flex-grow: 0
}
.uppy-size--lg .uppy-Webcam-videoSourceContainer {
  width: 33%;
  margin: 0
}
.uppy-Webcam-videoSource-select {
  display: block;
  font-size: 16px;
  line-height: 1.2;
  padding: .4em 1em .3em .4em;
  width: 100%;
  max-width: 90%;
  border: 1px solid #757575;
  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23757575%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E");
  background-repeat: no-repeat;
  background-position: right .4em top 50%, 0 0;
  background-size: .65em auto, 100%;
  margin: auto auto 10px;
  white-space: nowrap;
  text-overflow: ellipsis
}
.uppy-size--lg .uppy-Webcam-videoSource-select {
  font-size: 14px;
  margin-bottom: 0
}
.uppy-Webcam-videoSource-select::-ms-expand {
  display: none
}
.uppy-Webcam-buttonContainer {
  width: 50%;
  margin-left: 25%;
  text-align: center
}
.uppy-size--lg .uppy-Webcam-buttonContainer {
  width: 34%;
  margin-left: 0
}
.uppy-Webcam-recordingLength {
  width: 25%;
  -ms-flex-positive: 0;
  flex-grow: 0;
  color: #757575;
  font-family: SFMono-Regular, Menlo, Monaco, Consolas, Liberation Mono, Courier New, monospace;
  text-align: right
}
.uppy-size--lg .uppy-Webcam-recordingLength {
  width: 33%
}
.uppy-Webcam-button {
  width: 45px;
  height: 45px;
  border-radius: 50%;
  background-color: #e32437;
  color: #fff;
  cursor: pointer;
  transition: all .3s
}
.uppy-Webcam-button:focus {
  outline: none
}
.uppy-Webcam-button::-moz-focus-inner {
  border: 0
}
.uppy-Webcam-button:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
[data-uppy-theme=dark] .uppy-Webcam-button:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-Webcam-button::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-Webcam-button:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-Webcam-button svg {
  width: 30px;
  height: 30px;
  max-width: 100%;
  max-height: 100%;
  display: inline-block;
  vertical-align: text-top;
  overflow: hidden;
  fill: currentColor
}
.uppy-size--md .uppy-Webcam-button {
  width: 60px;
  height: 60px
}
.uppy-Webcam-button:hover {
  background-color: #d31b2d
}
.uppy-Webcam-button--picture {
  margin-right: 12px
}
.uppy-Webcam-permissons {
  padding: 15px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-flow: column wrap;
  flex-flow: column wrap;
  height: 100%;
  -ms-flex: 1;
  flex: 1
}
.uppy-Webcam-permissons p {
  max-width: 450px;
  line-height: 1.3;
  text-align: center;
  line-height: 1.45;
  color: #939393;
  margin: 0
}
.uppy-Webcam-permissonsIcon svg {
  width: 100px;
  height: 75px;
  color: #bbb;
  margin-bottom: 30px
}
.uppy-Webcam-title {
  font-size: 22px;
  line-height: 1.35;
  font-weight: 400;
  margin: 0 0 5px;
  padding: 0 15px;
  max-width: 500px;
  text-align: center;
  color: #333
}
[data-uppy-theme=dark] .uppy-Webcam-title {
  color: #eaeaea
}
.uppy-ScreenCapture-container {
  width: 100%;
  height: 100%;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-direction: column;
  flex-direction: column
}
.uppy-ScreenCapture-videoContainer {
  width: 100%;
  -ms-flex: 1;
  flex: 1;
  -ms-flex-positive: 1;
  flex-grow: 1;
  overflow: hidden;
  background-color: #333;
  text-align: center;
  position: relative
}
.uppy-size--md .uppy-ScreenCapture-videoContainer {
  max-width: 100%
}
.uppy-ScreenCapture-video {
  max-width: 100%;
  max-height: 100%;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  outline: 0
}
.uppy-ScreenCapture-buttonContainer {
  width: 100%;
  height: 75px;
  border-top: 1px solid #eaeaea;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
  padding: 0 20px;
  background-color: #fff
}
[data-uppy-theme=dark] .uppy-ScreenCapture-buttonContainer {
  background-color: #1f1f1f;
  border-top: 1px solid #333
}
.uppy-ScreenCapture-button {
  width: 45px;
  height: 45px;
  border-radius: 50%;
  color: #fff;
  cursor: pointer;
  transition: all .3s
}
.uppy-ScreenCapture-button:focus {
  outline: none
}
.uppy-ScreenCapture-button::-moz-focus-inner {
  border: 0
}
.uppy-ScreenCapture-button:focus {
  box-shadow: 0 0 0 3px rgba(34, 117, 215, .5)
}
[data-uppy-theme=dark] .uppy-ScreenCapture-button:focus {
  outline: none
}
[data-uppy-theme=dark] .uppy-ScreenCapture-button::-moz-focus-inner {
  border: 0
}
[data-uppy-theme=dark] .uppy-ScreenCapture-button:focus {
  box-shadow: 0 0 0 2px rgba(170, 225, 255, .85)
}
.uppy-size--md .uppy-ScreenCapture-button {
  width: 60px;
  height: 60px
}
.uppy-ScreenCapture-button:hover {
  background-color: #d31b2d
}
.uppy-ScreenCapture-button svg {
  width: 30px;
  height: 30px;
  max-width: 100%;
  max-height: 100%;
  display: inline-block;
  vertical-align: text-top;
  overflow: hidden;
  fill: currentColor
}
.uppy-ScreenCapture-button--submit {
  background-color: #2275d7;
  margin-left: 12px
}
.uppy-ScreenCapture-button--submit:hover {
  background-color: #1f69c1
}
.uppy-ScreenCapture-button--submit:disabled {
  background-color: #939393;
  cursor: default
}
.uppy-ScreenCapture-button--submit:disabled:hover {
  background-color: #eaeaea
}
.uppy-ScreenCapture-title {
  font-size: 22px;
  line-height: 1.35;
  font-weight: 400;
  margin: 0 0 5px;
  padding: 0 15px;
  max-width: 500px;
  text-align: center;
  color: #333
}
.uppy-ScreenCapture-icon--stream {
  position: absolute;
  right: 0;
  top: 0;
  margin: 1rem;
  z-index: 1
}
.uppy-ScreenCapture-icon--stream svg {
  fill: #939393
}
.uppy-ScreenCapture-icon--streamActive svg {
  animation: uppy-ScreenCapture-icon--blink 1s cubic-bezier(.47, 0, .75, .72) infinite
}
@keyframes uppy-ScreenCapture-icon--blink {
  0% {
    fill: #2275d7
  }
  50% {
    fill: #939393
  }
  to {
    fill: #2275d7
  }
}
.uppy-ScreenCapture-button--video {
  color: #fff;
  background: #e32437
}
.uppy-ScreenCapture-button--video:hover {
  background-color: #bc1828
}
/*!
 * Cropper.js v1.5.6
 * https://fengyuanchen.github.io/cropperjs
 *
 * Copyright 2015-present Chen Fengyuan
 * Released under the MIT license
 *
 * Date: 2019-10-04T04:33:44.164Z
 */ .cropper-container {
  direction: ltr;
  font-size: 0;
  line-height: 0;
  position: relative;
  -ms-touch-action: none;
  touch-action: none;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none
}
.cropper-container img {
  display: block;
  height: 100%;
  image-orientation: 0deg;
  max-height: none !important;
  max-width: none !important;
  min-height: 0 !important;
  min-width: 0 !important;
  width: 100%
}
.cropper-canvas, .cropper-crop-box, .cropper-drag-box, .cropper-modal, .cropper-wrap-box {
  bottom: 0;
  left: 0;
  position: absolute;
  right: 0;
  top: 0
}
.cropper-canvas, .cropper-wrap-box {
  overflow: hidden
}
.cropper-drag-box {
  background-color: #fff;
  opacity: 0
}
.cropper-modal {
  background-color: #000;
  opacity: .5
}
.cropper-view-box {
  display: block;
  height: 100%;
  outline: 1px solid #39f;
  outline-color: rgba(51, 153, 255, .75);
  overflow: hidden;
  width: 100%
}
.cropper-dashed {
  border: 0 dashed #eee;
  display: block;
  opacity: .5;
  position: absolute
}
.cropper-dashed.dashed-h {
  border-bottom-width: 1px;
  border-top-width: 1px;
  height: 33.33333%;
  left: 0;
  top: 33.33333%;
  width: 100%
}
.cropper-dashed.dashed-v {
  border-left-width: 1px;
  border-right-width: 1px;
  height: 100%;
  left: 33.33333%;
  top: 0;
  width: 33.33333%
}
.cropper-center {
  display: block;
  height: 0;
  left: 50%;
  opacity: .75;
  position: absolute;
  top: 50%;
  width: 0
}
.cropper-center:after, .cropper-center:before {
  background-color: #eee;
  content: " ";
  display: block;
  position: absolute
}
.cropper-center:before {
  height: 1px;
  left: -3px;
  top: 0;
  width: 7px
}
.cropper-center:after {
  height: 7px;
  left: 0;
  top: -3px;
  width: 1px
}
.cropper-face, .cropper-line, .cropper-point {
  display: block;
  height: 100%;
  opacity: .1;
  position: absolute;
  width: 100%
}
.cropper-face {
  background-color: #fff;
  left: 0;
  top: 0
}
.cropper-line {
  background-color: #39f
}
.cropper-line.line-e {
  cursor: ew-resize;
  right: -3px;
  top: 0;
  width: 5px
}
.cropper-line.line-n {
  cursor: ns-resize;
  height: 5px;
  left: 0;
  top: -3px
}
.cropper-line.line-w {
  cursor: ew-resize;
  left: -3px;
  top: 0;
  width: 5px
}
.cropper-line.line-s {
  bottom: -3px;
  cursor: ns-resize;
  height: 5px;
  left: 0
}
.cropper-point {
  background-color: #39f;
  height: 5px;
  opacity: .75;
  width: 5px
}
.cropper-point.point-e {
  cursor: ew-resize;
  margin-top: -3px;
  right: -3px;
  top: 50%
}
.cropper-point.point-n {
  cursor: ns-resize;
  left: 50%;
  margin-left: -3px;
  top: -3px
}
.cropper-point.point-w {
  cursor: ew-resize;
  left: -3px;
  margin-top: -3px;
  top: 50%
}
.cropper-point.point-s {
  bottom: -3px;
  cursor: s-resize;
  left: 50%;
  margin-left: -3px
}
.cropper-point.point-ne {
  cursor: nesw-resize;
  right: -3px;
  top: -3px
}
.cropper-point.point-nw {
  cursor: nwse-resize;
  left: -3px;
  top: -3px
}
.cropper-point.point-sw {
  bottom: -3px;
  cursor: nesw-resize;
  left: -3px
}
.cropper-point.point-se {
  bottom: -3px;
  cursor: nwse-resize;
  height: 20px;
  opacity: 1;
  right: -3px;
  width: 20px
}
@media (min-width:768px) {
  .cropper-point.point-se {
    height: 15px;
    width: 15px
  }
}
@media (min-width:992px) {
  .cropper-point.point-se {
    height: 10px;
    width: 10px
  }
}
@media (min-width:1200px) {
  .cropper-point.point-se {
    height: 5px;
    opacity: .75;
    width: 5px
  }
}
.cropper-point.point-se:before {
  background-color: #39f;
  bottom: -50%;
  content: " ";
  display: block;
  height: 200%;
  opacity: 0;
  position: absolute;
  right: -50%;
  width: 200%
}
.cropper-invisible {
  opacity: 0
}
.cropper-bg {
  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAAA3NCSVQICAjb4U/gAAAABlBMVEXMzMz////TjRV2AAAACXBIWXMAAArrAAAK6wGCiw1aAAAAHHRFWHRTb2Z0d2FyZQBBZG9iZSBGaXJld29ya3MgQ1M26LyyjAAAABFJREFUCJlj+M/AgBVhF/0PAH6/D/HkDxOGAAAAAElFTkSuQmCC")
}
.cropper-hide {
  display: block;
  height: 0;
  position: absolute;
  width: 0
}
.cropper-hidden {
  display: none !important
}
.cropper-move {
  cursor: move
}
.cropper-crop {
  cursor: crosshair
}
.cropper-disabled .cropper-drag-box, .cropper-disabled .cropper-face, .cropper-disabled .cropper-line, .cropper-disabled .cropper-point {
  cursor: not-allowed
}
.uppy-ImageCropper {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  width: 100%;
  height: 100%
}
.uppy-ImageCropper-container {
  -ms-flex-positive: 1;
  flex-grow: 1
}
.uppy-ImageCropper-image {
  display: block;
  max-height: 400px
}
.uppy-ImageCropper-controls {
  position: absolute;
  bottom: 15px;
  left: 50%;
  transform: translateX(-50%);
  background-color: rgba(0, 0, 0, .6);
  color: #fff;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center
}
.uppy-ImageCropper-controls button {
  width: 35px;
  height: 35px
}
.uppy-ImageCropper-controls button svg {
  padding: 3px
}
.uppy-size--md .uppy-ImageCropper-controls button {
  width: 40px;
  height: 40px
}
.uppy-size--md .uppy-ImageCropper-controls button svg {
  padding: 1px
}
.uppy-ImageCropper-controls button:hover {
  background-color: rgba(34, 117, 215, .8)
}
.uppy-ImageCropper-controls button:focus {
  outline: none;
  background-color: rgba(34, 117, 215, .8)
}
.uppy-ImageCropper .cropper-point {
  width: 8px;
  height: 8px
}
.uppy-ImageCropper .cropper-view-box {
  outline: 2px solid #39f
}
</style>