# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version/version'

Gem::Specification.new do |spec|
  spec.version       = SimulatorBaby::VERSION
  spec.name          = 'simulator_baby'
  spec.version       = '1.0'
  spec.authors       = ['Dave McNulla']
  spec.email         = ['mcnulla@gmail.com']
  spec.description   = 'Simulator rest server'
  spec.summary       = 'Rest server developed to control responses.'
  spec.homepage      = 'https://github.com/dmcnulla/simulator_baby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_dependency 'sinatra', '~> 1.4'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency 'cucumber', '~> 2.1', '>= 2.1.0'
  spec.add_development_dependency 'cuke_sniffer', '~> 0.8'
  spec.add_development_dependency 'fig_newton', '~> 0.9'
  spec.add_development_dependency 'rspec', '~> 2.14', '>= 2.14.1'
  spec.add_development_dependency 'webmock', '~> 1.13', '>= 1.13.0'
  spec.add_development_dependency 'yard', '~> 0.8', '>= 0.8.7.6'
  spec.add_development_dependency 'yard-cucumber', '~> 2.3', '>= 2.3.2'
  spec.add_development_dependency 'redcarpet', '~> 3.3', '>= 3.3.0'
  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_development_dependency 'simplecov', '~> 0.11'
  spec.add_development_dependency 'rubocop', '~> 0.37'
  spec.add_development_dependency 'poltergeist', '~> 1.9'
  spec.add_development_dependency 'rack-test', '~> 0.6'
end
