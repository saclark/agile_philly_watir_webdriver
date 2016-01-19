# load our gems
require 'cucumber'
require 'rspec/expectations'
require 'watir-webdriver'
require 'lite_page'
require 'accessible'
require 'pry'
require 'pry-byebug'

# setup configuration class and load config data
TestConfig ||= Accessible.create do |config|
  config.load('config/default.yml')
end

# Not necessary, but convenient: creates directories for holding
# our results and screenshots (defined in config) if they don't already exist
TestConfig.directories.each do |type, location|
  if [:results, :screenshots].include?(type.to_sym)
    Dir.mkdir(location) unless File.directory?(location)
  end
end

# make `on` and `visit` methods from LitePage gem
# available to our step definitions
World(LitePage::PageInitializers)
