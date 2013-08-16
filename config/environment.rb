ENV['RACK_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV']

begin
  require 'dotenv'
  Dotenv.load
rescue LoadError
  # We don't need dotenv on production
end

require File.expand_path('../environments', __FILE__)

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'r101-foosball'
