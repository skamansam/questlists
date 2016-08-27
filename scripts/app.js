/*
@license
Copyright (c) 2016 Skaman Sam. All rights reserved.
This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
*/
!function(n){"use strict";var e=n.querySelector("#app");e.auth_element=function(){var n=e.$.auth;return n},e.baseUrl="/",""===window.location.port&&(e.baseUrl="/questlists/"),e.displayInstalledToast=function(){console.info("CACHING ENABLED"),e.message="Caching complete! Questlists can be used offline!"},e.addEventListener("dom-change",function(){console.info("Questlists is ready to rock!")}),window.addEventListener("WebComponentsReady",function(){Polymer.dom(n).querySelector("#nav").show_changes()}),window.addEventListener("paper-header-transform",function(e){var t=Polymer.dom(n).querySelector("#mainToolbar .app-name"),r=Polymer.dom(n).querySelector("#mainToolbar .middle-container"),o=Polymer.dom(n).querySelector("#mainToolbar .bottom-container"),a=e.detail,u=a.height-a.condensedHeight,c=Math.min(1,a.y/u),i=.5,l=u-a.y,f=u/(1-i),s=Math.max(i,l/f+i),d=1-c;Polymer.Base.transform("translate3d(0,"+100*c+"%,0)",r),Polymer.Base.transform("scale("+d+") translateZ(0)",o),Polymer.Base.transform("scale("+s+") translateZ(0)",t)}),e.scrollPageToTop=function(){e.$.headerPanelMain.scrollToTop(!0)},e.closeDrawer=function(){e.$.paperDrawerPanel.closeDrawer()}}(document),!function(n){"use strict";function e(n,e){var t=(65535&n)+(65535&e),r=(n>>16)+(e>>16)+(t>>16);return r<<16|65535&t}function t(n,e){return n<<e|n>>>32-e}function r(n,r,o,a,u,c){return e(t(e(e(r,n),e(a,c)),u),o)}function o(n,e,t,o,a,u,c){return r(e&t|~e&o,n,e,a,u,c)}function a(n,e,t,o,a,u,c){return r(e&o|t&~o,n,e,a,u,c)}function u(n,e,t,o,a,u,c){return r(e^t^o,n,e,a,u,c)}function c(n,e,t,o,a,u,c){return r(t^(e|~o),n,e,a,u,c)}function i(n,t){n[t>>5]|=128<<t%32,n[(t+64>>>9<<4)+14]=t;var r,i,l,f,s,d=1732584193,m=-271733879,h=-1732584194,p=271733878;for(r=0;r<n.length;r+=16)i=d,l=m,f=h,s=p,d=o(d,m,h,p,n[r],7,-680876936),p=o(p,d,m,h,n[r+1],12,-389564586),h=o(h,p,d,m,n[r+2],17,606105819),m=o(m,h,p,d,n[r+3],22,-1044525330),d=o(d,m,h,p,n[r+4],7,-176418897),p=o(p,d,m,h,n[r+5],12,1200080426),h=o(h,p,d,m,n[r+6],17,-1473231341),m=o(m,h,p,d,n[r+7],22,-45705983),d=o(d,m,h,p,n[r+8],7,1770035416),p=o(p,d,m,h,n[r+9],12,-1958414417),h=o(h,p,d,m,n[r+10],17,-42063),m=o(m,h,p,d,n[r+11],22,-1990404162),d=o(d,m,h,p,n[r+12],7,1804603682),p=o(p,d,m,h,n[r+13],12,-40341101),h=o(h,p,d,m,n[r+14],17,-1502002290),m=o(m,h,p,d,n[r+15],22,1236535329),d=a(d,m,h,p,n[r+1],5,-165796510),p=a(p,d,m,h,n[r+6],9,-1069501632),h=a(h,p,d,m,n[r+11],14,643717713),m=a(m,h,p,d,n[r],20,-373897302),d=a(d,m,h,p,n[r+5],5,-701558691),p=a(p,d,m,h,n[r+10],9,38016083),h=a(h,p,d,m,n[r+15],14,-660478335),m=a(m,h,p,d,n[r+4],20,-405537848),d=a(d,m,h,p,n[r+9],5,568446438),p=a(p,d,m,h,n[r+14],9,-1019803690),h=a(h,p,d,m,n[r+3],14,-187363961),m=a(m,h,p,d,n[r+8],20,1163531501),d=a(d,m,h,p,n[r+13],5,-1444681467),p=a(p,d,m,h,n[r+2],9,-51403784),h=a(h,p,d,m,n[r+7],14,1735328473),m=a(m,h,p,d,n[r+12],20,-1926607734),d=u(d,m,h,p,n[r+5],4,-378558),p=u(p,d,m,h,n[r+8],11,-2022574463),h=u(h,p,d,m,n[r+11],16,1839030562),m=u(m,h,p,d,n[r+14],23,-35309556),d=u(d,m,h,p,n[r+1],4,-1530992060),p=u(p,d,m,h,n[r+4],11,1272893353),h=u(h,p,d,m,n[r+7],16,-155497632),m=u(m,h,p,d,n[r+10],23,-1094730640),d=u(d,m,h,p,n[r+13],4,681279174),p=u(p,d,m,h,n[r],11,-358537222),h=u(h,p,d,m,n[r+3],16,-722521979),m=u(m,h,p,d,n[r+6],23,76029189),d=u(d,m,h,p,n[r+9],4,-640364487),p=u(p,d,m,h,n[r+12],11,-421815835),h=u(h,p,d,m,n[r+15],16,530742520),m=u(m,h,p,d,n[r+2],23,-995338651),d=c(d,m,h,p,n[r],6,-198630844),p=c(p,d,m,h,n[r+7],10,1126891415),h=c(h,p,d,m,n[r+14],15,-1416354905),m=c(m,h,p,d,n[r+5],21,-57434055),d=c(d,m,h,p,n[r+12],6,1700485571),p=c(p,d,m,h,n[r+3],10,-1894986606),h=c(h,p,d,m,n[r+10],15,-1051523),m=c(m,h,p,d,n[r+1],21,-2054922799),d=c(d,m,h,p,n[r+8],6,1873313359),p=c(p,d,m,h,n[r+15],10,-30611744),h=c(h,p,d,m,n[r+6],15,-1560198380),m=c(m,h,p,d,n[r+13],21,1309151649),d=c(d,m,h,p,n[r+4],6,-145523070),p=c(p,d,m,h,n[r+11],10,-1120210379),h=c(h,p,d,m,n[r+2],15,718787259),m=c(m,h,p,d,n[r+9],21,-343485551),d=e(d,i),m=e(m,l),h=e(h,f),p=e(p,s);return[d,m,h,p]}function l(n){var e,t="";for(e=0;e<32*n.length;e+=8)t+=String.fromCharCode(n[e>>5]>>>e%32&255);return t}function f(n){var e,t=[];for(t[(n.length>>2)-1]=void 0,e=0;e<t.length;e+=1)t[e]=0;for(e=0;e<8*n.length;e+=8)t[e>>5]|=(255&n.charCodeAt(e/8))<<e%32;return t}function s(n){return l(i(f(n),8*n.length))}function d(n,e){var t,r,o=f(n),a=[],u=[];for(a[15]=u[15]=void 0,o.length>16&&(o=i(o,8*n.length)),t=0;16>t;t+=1)a[t]=909522486^o[t],u[t]=1549556828^o[t];return r=i(a.concat(f(e)),512+8*e.length),l(i(u.concat(r),640))}function m(n){var e,t,r="0123456789abcdef",o="";for(t=0;t<n.length;t+=1)e=n.charCodeAt(t),o+=r.charAt(e>>>4&15)+r.charAt(15&e);return o}function h(n){return unescape(encodeURIComponent(n))}function p(n){return s(h(n))}function y(n){return m(p(n))}function g(n,e){return d(h(n),h(e))}function v(n,e){return m(g(n,e))}function b(n,e,t){return e?t?g(e,n):v(e,n):t?p(n):y(n)}"function"==typeof define&&define.amd?define(function(){return b}):"object"==typeof module&&module.exports?module.exports=b:n.md5=b}(this);