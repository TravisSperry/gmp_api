# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'

gem 'appengine', '~> 0.4.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.0.0'
gem 'carrierwave-google-storage'
gem 'chosen-rails'
gem 'coffee-rails', '~> 4.2'
gem 'country_select'
gem 'devise'
gem 'google-cloud-storage', '~> 1.8', require: false
gem 'haml'
gem 'haml-rails', '~> 1.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-datatables'
gem 'jquery-rails'
gem 'rmagick'
gem 'pg', '~> 0.20'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-remote'
  gem 'scss_lint', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'rspec-rails', '~> 3.7'
  gem 'rubocop'
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
