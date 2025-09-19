ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require 'capybara/rspec'

Capybara.server = :puma, { Silent: true }
Capybara.asset_host = 'http://localhost:3000/'
Capybara.javascript_driver = :selenium_headless
Selenium::WebDriver.logger.ignore(:clear_local_storage, :clear_session_storage)