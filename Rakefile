require 'bundler/setup'
require 'bundler/gem_tasks'

task :default => :spec

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = '--color'
end

task :default => :spec
