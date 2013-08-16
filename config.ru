require File.expand_path('../config/environment', __FILE__)
require 'sprockets'
require 'sprockets-sass'
require 'compass'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'lib/r101/foosball/assets/javascripts'
  environment.append_path 'lib/r101/foosball/assets/stylesheets'
  environment.append_path 'lib/r101/foosball/assets/images'
  run environment
end

run R101::Foosball.app
