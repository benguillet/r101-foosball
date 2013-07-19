module R101
  module Foosball
    class App < Sinatra::Base

      set :views,      File.expand_path('../views',  __FILE__)
      set :public_dir, File.expand_path('../assets', __FILE__)

      get '/' do
        @players = Player.all
        haml :index
      end

    end
  end
end
