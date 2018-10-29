// ==UserScript==
// @name         Youtube external ads removal
// @version      1
// @description  Hide external ads
// @author       geo909
// @match        *://*.kathimerini.gr/*
//
// ==/UserScript==
//
//
var sideads = document.getElementById("location-BODY-FIRST");

if (sideads) {
    sideads.style.display = "none";
    //setTimeout(sideads.style.display = "none", 10);
}
