chrome.tabs.onUpdated.addListener (tabId, changeInfo, tab) ->
  chrome.pageAction.show(tabId) if tab.url.indexOf 'localhost:3000' > -1