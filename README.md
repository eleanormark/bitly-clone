bitly-clone
===========
A URL shortener web-based app that provides a service similar to bitly.  You enter a web address like `https://github.com/eleanormark/bitly-clone/tree/master/app` and you get back a shortened version like `http://bit.ly/17pOr6M`.  To run this program open a terminal and do the following:
    
* run `$ bundle` to install the necessary Gems
* run `$ rake db:create` to create your database
* run `$ rake db:schema:load` to load the database schema
* run `$ rails s` to initialize your sever and to start the app
* navigate your browser to `http://localhost:3000/`

This web-based app is written with Ruby on Rails, Active Record PostgreSQL, and Bootstrap and tested with Rspec.
