(window.webpackJsonp=window.webpackJsonp||[]).push([[5],{136:function(t,i,n){"use strict";n.r(i);var a=n(50),c=n(3);var o=function(){function t(i){var n=this;!function(t,i){if(!(t instanceof i))throw new TypeError("Cannot call a class as a function")}(this,t),this.html=i,this.linksList=Object(c.A)(".footer--link",this.html),this.socialLinks=Object(c.A)(".footer--socialIcon",this.html),this.analytics=new a.a,Object(c.k)(this.linksList,(function(t){Object(c.c)(t,"click",n.analyticsLink.bind(n))})),Object(c.k)(this.socialLinks,(function(t){Object(c.c)(t,"click",n.analyticsSocial.bind(n))}))}return t.prototype.analyticsLink=function(t){var i={event:"trackEvent",category:"navigation",action:"click - footer nav",label:t.target.innerText};this.analytics.pushCustomData(i,"click - footer nav "+t.target.innerText)},t.prototype.analyticsSocial=function(t){var i=t.target.getAttribute("alt")||"Social Icon",n={event:"trackEvent",category:"navigation",action:"click - social sharing",label:i,pagePosition:"footer"};this.analytics.pushCustomData(n,"click - footer nav social - "+i)},t}();i.default=o}}]);