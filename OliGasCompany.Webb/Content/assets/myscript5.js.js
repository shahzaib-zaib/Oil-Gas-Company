(window.webpackJsonp=window.webpackJsonp||[]).push([[11],{141:function(t,n,i){"use strict";i.r(n);var e=i(3),c=i(50);var s=function(){function t(n){var i=this;!function(t,n){if(!(t instanceof n))throw new TypeError("Cannot call a class as a function")}(this,t),this.html=n,this.links=Object(e.A)(".cta",n),this.analytics=new c.a,Object(e.k)(this.links,(function(t){Object(e.c)(t,"click",i.setAnalytics.bind(i))}))}return t.prototype.setAnalytics=function(t){var n=t.target,i=n.closest(".highlight--section"),c=Object(e.z)(".highlight--section-title .h3",i).innerText,s={event:"trackEvent",category:""+window.exxonPageType,action:"click",label:c,linkUrl:n.getAttribute("href"),linkText:n.innerText};this.analytics.pushCustomData(s,"highlights")},t}();n.default=s}}]);