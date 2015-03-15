# load our gems
require 'watir-webdriver'
require 'cucumber'
require 'rspec'
require 'rspec/expectations'
require 'accessible'
require 'lite_page'
require 'pry'
require 'pry-byebug'

# setup configuration class and load config data
class TestConfig
  include Accessible
  load 'config/default.yml'
end

# make `on` and `visit` methods from LitePage gem
# available to our step definitions
World(LitePage::PageInitializers)
