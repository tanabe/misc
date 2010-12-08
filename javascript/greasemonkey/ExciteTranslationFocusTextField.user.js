// ==UserScript==
// @name           Excite Translation Focus TextField
// @namespace      http://bitmap.dyndns.org/
// @description    Focus TextField at Excite translation page
// @include        http://www.excite.co.jp/world/
// ==/UserScript==
(function() {
  function initialize() {
    document.getElementsByTagName("textarea")[0].focus();
  }
  window.addEventListener("load", initialize, true);
})();
