source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.1.rc1'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use HAML for html
gem 'haml-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'therubyrhino', platforms: :jruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# for authentication and roles
gem 'devise', "3.1.0"
gem 'cancan'
gem 'omniauth'

# use Bootstrap 3 for RAD
gem 'twitter-bootswatch-rails', "~> 3.0.0.0"
gem 'twitter-bootswatch-rails-helpers'

# for attaching and uploading images
gem 'paperclip'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

group :test, :development do
  gem 'capybara', '~> 2.1.0'
  gem 'database_cleaner', '~> 1.1.1'
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'forgery', '~> 0.5.0'
  gem 'launchy', '~> 2.3.0'
  gem 'rspec-rails', '~> 2.14.0'
  gem 'spork', '~> 0.9.2'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork', '~>1.5.1'
  gem 'guard-bundler'
  gem 'guard-rails', '~>0.4.7'
  gem 'guard-coffeescript', '~>1.3.4'
  gem 'guard-sass', '~>1.3.2', :require=>false
  gem 'guard-migrate', '~>0.2.1'
  gem 'guard-rake', '~>0.0.9'
  gem 'mysql2', '~> 0.3.13'       # optional for local CRMS test.
  gem 'poltergeist', '~> 1.4.1'   # need to install phantomjs for this.
  gem 'simplecov', '~>0.7.1'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper', '~>0.0.5'
end
