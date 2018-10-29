// ==UserScript==
// @name         Youtube external ads removal
// @version      1
// @description  Hide external ads
// @author       geo909
// @match        *://*.youtube.com/*
//
// ==/UserScript==
//
//
var sideads = document.getElementById("player-ads");
var frontpagebar = document.getElementById("masthead-ad");

if (sideads) {
    setTimeout(sideads.style.display = "none", 3000);
}

if (frontpagebar) {
    setTimeout(frontpagebar.style.display = "none", 3000);
}
