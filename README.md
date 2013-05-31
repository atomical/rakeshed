Rakeshed
=========

You are in a meeting giving a demo of your weekly project.  You switch from browser to terminal 
to tweak this, tweak that, seed the database, and empty the database -- giving the impression that this "thing" isn't really done.

Rakeshed fixes that.  Write tasks ahead of time and execute them from the 
address bar in the browser.  No more blowing up your presentation with messy context
switches.

Install
----------

### Gemfile


```ruby
group :development do 
  gem 'rakeshed'
end
```

### Tasks

```ruby
  # lib/tasks/shed.rake
  namespace :shed do
    # insert your rake tasks here
    task :update_the_database do 

    end
  end
```

### Chrome

To install the Chrome extension navigate to chrome://extensions and load 'chrome-extension'
from the rakeshed directory.

This project rocks and uses MIT-LICENSE.

The Rails Logo was created by Kevin Milden and is distrubuted under the BY-ND Creative Commons Licence.
http://railslogo.com/