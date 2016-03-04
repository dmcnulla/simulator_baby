# run -> env { [200, {'Content-Type' => 'text/plain'}, ["Your IP: #{env['REMOTE_ADDR']}"]] }

require 'rubygems'
require 'bundler'

Bundler.require

require './lib/main.rb'

run Simulator