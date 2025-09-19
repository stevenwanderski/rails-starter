source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '7.2.2.2'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '6.6.1'
gem 'tailwindcss-rails'
gem 'bootsnap', require: false
gem 'devise'
gem 'active_link_to'
gem 'rexml'
gem 'premailer-rails'
gem 'awesome_print'
gem 'rails-ujs'

group :development do
  gem 'annotate'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'rspec-rails', '~> 7.0.0'
  gem 'factory_bot_rails'
  gem 'dotenv'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'selenium-webdriver', '4.29.1'
  gem 'launchy'
end
