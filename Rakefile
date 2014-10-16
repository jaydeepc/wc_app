# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'cucumber'
require 'cucumber/rake/task'
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

Cucumber::Rake::Task.new(:regression)do |t|
  t.cucumber_opts = "features --tags @regression -f json --out features/result.json"
end

task :default => ['spec', 'spec:javascript']
