// ==UserScript==
// @name           Google Results 10Key Shortcut
// @namespace      http://bitmap.dyndns.org/
// @description    Add 10key shortcut to Google search results page
// @include        http://www.google.co.jp/search?*
// ==/UserScript==
(function() {
  function initialize() {
    try {
      var focused = false;
      var liTags = document.getElementById("res").getElementsByTagName("ol")[0].getElementsByTagName("li");
      var aTags = [];
      for (var i = 0, length = liTags.length; i < length; i++) {
        var aTag = liTags[i].getElementsByTagName("a")[0];
        aTag.innerHTML = "[" + i + "] " + aTag.innerHTML;
        aTags.push(aTag);
      }

      document.getElementsByName("q")[0].addEventListener("focus", function(e) {
        focused = true;
      }, true);

      document.getElementsByName("q")[0].addEventListener("blur", function(e) {
        focused = false;
      }, true);

      document.addEventListener("keydown", function(e){
        var keyCode = e.keyCode;
        if (!focused && 48 <= keyCode && keyCode <= 57) {
          var index = keyCode - 48;
          location.href = aTags[index].href;
        }
      }, true);
    } catch (e) {}
    window.removeEventListener("load", initialize);
  }

  window.addEventListener("load", initialize, true);
})();

