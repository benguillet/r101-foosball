module R101
  module Foosball
    class App < Sinatra::Base

      set :views,      File.expand_path('../views',  __FILE__)

      get '/' do
        @players = Player.all
        haml :index
      end

    end
  end
end
