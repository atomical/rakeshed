// Generated by CoffeeScript 1.6.2
(function() {
  chrome.tabs.onUpdated.addListener(function(tabId, changeInfo, tab) {
    if (tab.url.indexOf('localhost:3000') > -1) {
      return chrome.pageAction.show(tabId);
    }
  });

}).call(this);
