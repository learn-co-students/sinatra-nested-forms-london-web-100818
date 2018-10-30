require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do

      erb :index
    end

    get '/new' do

      erb :new
  end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end
      
      @ships = Ship.all
      erb :pirates
    end

end
end
