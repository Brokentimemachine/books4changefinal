# README

Ruby Version:
2.5.1

Rails Version:
5.2.1

Setup
Check out this repository and then,

$ bundle install
$ bundle exec rails db:migrate
$ bundle exec rails server
Features
This application doesn't provide many features in order to keep it simple. Here are the features that it does include:

See news feed
Create new post
Edit Post
Delete Post
Create Account/Sign on/Sign out
View Profile
Who to Collab With screen

Used gems

For CSS Style
bulma
font-awesome-sass

For testing
factory_bot
faker
rspec

For debugging
bullet
pry-byebug
pry-rails
web-console

See more details on Gemfile.

Test
$ bundle exec rspec
Data reset and sample data creation
$ bundle exec rails db:reset    # Data reset
$ bundle exec rails db:populate # Create sample data
