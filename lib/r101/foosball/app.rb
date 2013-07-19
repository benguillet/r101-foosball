module R101
  module Foosball
    class App < Sinatra::Base
      register Sinatra::StaticAssets

      set :views, File.expand_path('../views',  __FILE__)

      get '/' do
        @players = Player.all
        haml :index
      end

      get '/rank' do
        @players = Player.find(:all, order: 'score DESC')
        haml :rank
      end

      put 'players/:id' do

      end

    end
  end
end
