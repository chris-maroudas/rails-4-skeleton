source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-sass-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use debugger
# gem 'debugger', group: [:development, :test]

#Needed for rails 4.2
gem 'responders', '~> 2.0'

#Bootstrap
gem 'autoprefixer-rails'
gem 'bootstrap-sass'

#cron jobs
gem 'whenever', :require => false

#date/time validations for AR
gem 'jc-validates_timeliness'

gem 'passenger'
gem 'figaro'

group :production do
  # because capistrano fails otherwise
  # http://stackoverflow.com/questions/21560297/capistrano-sshauthenticationfailed-not-prompting-for-password
  gem 'net-ssh', '2.7.0'
  gem 'capistrano', '~> 3.3.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-passenger'
  gem 'exception_notification'
end

group :development do
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'factory_girl_rails', require: false
  gem 'capybara'
  gem 'rspec-rails'
end

group :test do
  gem 'shoulda'
end
