require "rake/testtask"

#creates a new task and runs db:test:prepare task  so
#that it runs automatically even when we run migrations
Rake::TestTask.new(:test => "db:test:prepare") do |t|
  #add test directory to load path
  t.libs << "test"
  #run any test file under the test directory
  t.pattern = "test/**/*_test.rb"
end

# runs test task as a default task even if you just run rake by itself
task :default => :test
