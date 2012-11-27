# Birdwatch

Birdwatch is a super simple tweet catcher. It uses the Twitter gem to pull in tweets. Have a look in the site controller to see what it's doing.

Don't be afraid of all the crazy markup, that's just [haml](http://haml-lang.com/)

# Requirements

rvm install 1.9.3

rvm use 1.9.3

gem install bundler

bundle install

# Setup

rake db:create

rake db:migrate


# Startup 

foreman start

http://localhost:3000 in your browser