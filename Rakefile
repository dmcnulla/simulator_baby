require 'bundler/gem_tasks'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'coveralls/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

Coveralls::RakeTask.new

task default: [:features, 'coveralls:push']

task :clean do
  `git checkout doc`
end
