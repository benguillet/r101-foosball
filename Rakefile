#!/usr/bin/env rake
require File.expand_path('../config/environment', __FILE__)
require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

task :default => :spec

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

desc 'Start an irb session'
task :console do
  require 'irb'
  ARGV.clear
  IRB.start
end

task :tasks do
  require File.expand_path(File.join(*%w[ task seed ]), File.dirname(__FILE__))
end

namespace :player do
  task :seed => :tasks do
    Seed.create_rows
  end
end
