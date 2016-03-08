require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/rest_data.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/main.rb'))
require 'rack/test'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/poltergeist'
require 'rspec/expectations'
require 'cucumber/rspec/doubles'
require 'coveralls'
require 'simplecov'
require 'sinatra'

coverarray = [SimpleCov::Formatter::HTMLFormatter, Coveralls::SimpleCov::Formatter]
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(coverarray)

SimpleCov.start do
  add_filter 'features'
end

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
    js_errors: false,
    timeout: 120,
    debug: false,
    phantomjs_options: ['--load-images=no', '--disk-cache=false'],
    inspector: true
  }

  Capybara::Poltergeist::Driver.new(app, options)
end

module AppHelper
  def app
    Simulator
  end
end

World(Rack::Test::Methods, AppHelper)
