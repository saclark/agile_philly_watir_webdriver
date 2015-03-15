# Not necessary, but convenient: creates directories for holding
# our results and screenshots (defined in config) if they don't already exist
TestConfig.directories.each do |type, location|
  if [:results, :screenshots].include?(type.to_sym)
    Dir.mkdir(location) unless File.directory?(location)
  end
end

# This gets executed before each individual scenario is run
Before do
  # Instantiate the browser
  @browser = Watir::Browser.new(TestConfig.browser_vendor.to_sym)
  @browser.window.maximize
end

# This gets executed after each individual scenario is run
After do |scenario|
  # If scenario failed, take a screenshot, save it with a timestamp and
  # embed it in the results file
  if scenario.failed?
    screenshots_dir = TestConfig.directories.screenshots
    timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
    file_name = "#{screenshots_dir}/#{timestamp}.png"

    @browser.screenshot.save(file_name)
    embed(file_name, 'image/png')
  end

  # close the browser
  @browser.close
end
