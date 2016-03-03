require 'rspec/expectations'
require 'cucumber/rspec/doubles'
require 'rubygems'
require 'coveralls'
require 'simplecov'
require 'sinatra'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
])

SimpleCov.start do
  add_filter 'features'
end

require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/rest_data.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/mock.rb'))
