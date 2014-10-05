# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

SampleApp::Application.load_tasks

task :populate_samples do
  require 'net/http'
  base_url = 'https://mongo-profiler-sample-app.herokuapp.com'

  paths = %w[customers
  customers?first_name=Junior
  customers?last_name=Harber
  customers?email=lola_senger@kirlin.com
  customers?location_id=542c70733832390002000000
  locations
  locations?country=Madagascar]

  paths.map do |path|
    Thread.new do
      Net::HTTP.get(URI.join(base_url, path))
    end
  end.each(&:join)
end
