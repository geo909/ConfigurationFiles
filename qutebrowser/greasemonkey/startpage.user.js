// ==UserScript==
// @name         Duckduckgo ads removal
// @version      1
// @description  Hide ads in duckduckgo results
// @author       geo909
// @match        *://*.startpage.com/*
//
// ==/UserScript==
//
//
var div = document.getElementById("sponsored_csa1");
if (div) {
    div.style.display = "none";
}

var div2 = document.getElementById("sponsored_csa2");
if (div2) {
    div2.style.display = "none";
}
//elmDeleted.parentNode.removeChild(elmDeleted);
//

