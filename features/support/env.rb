require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'site_prism'
require 'selenium-webdriver'
 
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.co.uk"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :firefox
end
  
World(Capybara::DSL)
