# -*- encoding: utf-8 -*-
$:.push File.expand_path('lib', File.dirname(__FILE__))
require 'adhearsion/text_to_scum/version'

Gem::Specification.new do |s|
  s.name        = 'adhearsion-text-to-scum'
  s.version     = Adhearsion::TextToScum::VERSION
  s.authors     = ['Stephen George']
  s.email       = ['sgit-turtle.testudo12@wronghead.com']
  s.homepage    = 'http://ifbyphone.com'
  s.summary     = 'Text to scum plugin for Adhearsion'
  s.description = 'Craft yer lowly land lubber talk into the dialect of ye inner pirate.'

  # s.rubyforge_project = "text_to_scum"

  # Use the following if using Git
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency %q<adhearsion>, ['~> 2.1']
  s.add_runtime_dependency %q<faraday>, ['~> 0.8']
  s.add_runtime_dependency %q<activesupport>, ['>= 3.0.10']

  s.add_development_dependency %q<bundler>, ['~> 1.0']
  s.add_development_dependency %q<rspec>, ['~> 2.5']
  s.add_development_dependency %q<rake>, ['>= 0']
  s.add_development_dependency %q<rr>, ['>= 0']
  s.add_development_dependency %q<simplecov>, ['>= 0']
  s.add_development_dependency %q<simplecov-rcov>, ['>= 0']
  s.add_development_dependency %q<guard-rspec>
 end
