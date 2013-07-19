module R101
  module Foosball
    class App < Sinatra::Base

      get '/' do
        'hello!'
      end

    end
  end
end
