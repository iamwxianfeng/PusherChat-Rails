Getting started locally
-----------------------

ruby 1.9.2 + rails 3.0.3

>bundle install

>rake db:create

config `config/initializers/pusher.rb`

>rails s

Visit <http://localhost:3000/> in two browsers and start chatting.

### Tips
1) no such file to load -- crack/core_extensions (LoadError)
because your crack gem is new , downgrade do version 0.1.8



### Debugging

If something isn't working it's most likely the Pusher credentials:

* Take a look at the Rails log for any Pusher errors
* Enable javascript debugging on line 20 of `public/javascripts/chat.js`
