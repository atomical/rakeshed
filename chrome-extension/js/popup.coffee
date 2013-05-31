class Rakeshed
  constructor: (@options) ->
  loadTasks: =>
    $.ajax
      url: "http://localhost:#{@options.port}/sheds"
      dataType: 'json'
      success: (tasks) ->
        template = window.Handlebars.templates['tasks_index'] tasks 
        console.log(template)
        $('body .content').empty().append(template)
        $('a').click (event) ->
          url = $(@).attr('href')
          $.ajax
            url: url,
            success: (response) ->
              if response.errors?
                status_text = response.errors
              else
                status_text = 'Sucess'
                chrome.tabs.reload()
              $('#status').empty().append(status_text)

              window.close() unless response.errors?

rakeshed = new Rakeshed({port: 3000})
rakeshed.loadTasks()
window.rakeshed = rakeshed




