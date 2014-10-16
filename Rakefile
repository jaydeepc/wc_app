# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'cucumber'
require 'cucumber/rake/task'
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :cucumber do
  [:regression, :question].each do |suite|
    Cucumber::Rake::Task.new(suite) do |t|
      t.cucumber_opts = "features --tags @#{suite}"
    end

    Cucumber::Rake::Task.new("#{suite}_with_report") do |t|
      t.cucumber_opts = "features --tags @#{suite} -f json -o result.json"
    end
  end
end

task :default => ['spec', 'spec:javascript']
