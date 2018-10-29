// ==UserScript==
// @name         magnetdl ads
// @version      1
// @description  Hide ads
// @author       geo909
// @match        http://www.magnetdl.com/file*
//
// ==/UserScript==
//
//
function removeElementsByClass(className){
    var elements = document.getElementsByClassName(className);
    while(elements.length > 0){
        elements[0].parentNode.removeChild(elements[0]);
    }
}   

removeElementsByClass('fill-ads');

var anchors = document.getElementsByTagName("a");
for (i = 0; i < anchors.length; i++) {
    if (anchors[i].title == "Private Internet Access") {
		anchors[i].parentNode.removeChild(anchors[i]);
    }
}
