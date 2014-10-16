require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'cucumber'
require 'fileutils'
require 'capybara/dsl'
require 'capybara/poltergeist'

CONFIG = YAML.load_file("features/support/config.yml")
#initialize a new Driver

include Capybara::DSL
# Capybara.register_driver :selenium do |app|
#   profile = Selenium::WebDriver::Firefox::Profile.new
#   Capybara::Selenium::Driver.new( app, :browser => :firefox, :profile => profile )
# end
#
# Capybara.default_driver = :selenium


#Headless Driver

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :js_errors => false, :window_size => [320, 548])
end

Capybara.configure do |c|
  c.javascript_driver = :poltergeist
  c.default_driver = :poltergeist
  c.app_host = CONFIG['app_host']
end


# window = Capybara.current_session.driver.browser
# window.resize_to(568, 300)


#Take ScreenShots on Failure
dir_path = Dir.pwd
time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
new_dir_path = dir_path + '/features/screenshots/' + time

unless Dir.exist?(new_dir_path)
  FileUtils::mkdir_p(new_dir_path)
else
end

#Run after each scenario
After do |scenario|
  #Check, scenario is failed?
  if(scenario.failed?)
    name_of_scenario = time + scenario.name.gsub(/\s+/, "_").gsub("/","_")
    file_path = File.expand_path(new_dir_path)+'/'+name_of_scenario +'.png'
    sleep 1
    # Capybara.current_driver.render(file_path)
    page.driver.render(file_path)
    # page.driver.browser.save_screenshot file_path
    embed("#{file_path}", "image/png", "SCREENSHOT")
  end
end