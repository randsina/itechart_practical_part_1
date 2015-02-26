require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.app_host = 'https://github.com'
Capybara.default_driver = :poltergeist
