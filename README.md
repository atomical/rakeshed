Rakeshed
=========

This project rocks and uses MIT-LICENSE.

Ever been in a meeting that required giving a demo of this weeks work? You switch from your browser 
to the development environment to run tasks that show what the feature looks like in
different states.  Switching back and forth gives the impression that the development isn't finished.
Rakeshed fixes that.  Write your rake tasks ahead of time and execute them in the browser.


Install
----------

### Gemfile


```ruby
group :development do 
  gem 'rakeshed'
end
```

### Add lib/tasks/shed.rake to your Rails project

```ruby
  namespace :shed do
    # insert your rake tasks here
    task :update_the_database do 

    end
  end
```

### Chrome

To install the Chrome extension navigate to chrome://extensions and load 'chrome-extension'
from the rakeshed directory.


The Rails Logo was created by Kevin Milden and is distrubuted under the BY-ND Creative Commons Licence.
http://railslogo.com/