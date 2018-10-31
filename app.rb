require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do

      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])

      @ship_one = Ship.new(params["pirate"]["ships"][0]["name"],params["pirate"]["ships"][0]["type"], params["pirate"]["ships"][0]["booty"])

      @ship_two = Ship.new(params["pirate"]["ships"][1]["name"],params["pirate"]["ships"][1]["type"], params["pirate"]["ships"][1]["booty"])

      erb :"pirates/pirates"
    end

  end
end
