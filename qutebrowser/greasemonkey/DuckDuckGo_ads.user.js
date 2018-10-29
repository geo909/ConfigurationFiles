// ==UserScript==
// @name         Duckduckgo ads removal
// @version      1
// @description  Hide ads in duckduckgo results
// @author       geo909
// @match        *://*.duckduckgo.com/*
//
// ==/UserScript==
//
var div = document.getElementById("ads");
if (div) {
    div.style.display = "none";
}

