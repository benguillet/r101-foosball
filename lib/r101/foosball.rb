require 'active_support'
require 'active_support/core_ext'

module R101
  module Foosball
    autoload :App, 'r101/foosball/app'

      def self.logger
        @logger ||= Logger.new(STDOUT)
      end

      def self.app
        @app ||= Rack::Builder.app do
          run App
        end
      end

  end
end
