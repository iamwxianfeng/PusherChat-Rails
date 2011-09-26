Getting started locally
-----------------------

ruby 1.9.2 + rails 3.0.3

>bundle install

>rake db:create

config `config/initializers/pusher.rb`

>rails s

Visit <http://localhost:3000/> in two browsers and start chatting.

### Debugging

If something isn't working it's most likely the Pusher credentials:

* Take a look at the Rails log for any Pusher errors
* Enable javascript debugging on line 20 of `public/javascripts/chat.js`
