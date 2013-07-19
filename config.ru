require File.expand_path('../config/environment', __FILE__)
require 'sass/plugin/rack'

# use scss for stylesheets
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run R101::Foosball.app
