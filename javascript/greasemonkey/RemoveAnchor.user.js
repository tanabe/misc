// ==UserScript==
// @name           RemoveAnchor
// @namespace      http://blog.kaihatsubu.com/
// @description    remove focused anchor elemetnt's href attribute
// ==/UserScript==
(function() {
  document.addEventListener("keypress", function(event) {
    if ((event.which == 100) && document.activeElement.href) {
      document.activeElement.removeAttribute("href");
    }
  }, false);
})();
