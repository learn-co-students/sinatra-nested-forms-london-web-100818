require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate = params[:pirate]
      ship = params[:pirate][:ships]
      
      @pirate = Pirate.new(params[:pirate])
      
      ship.each_with_index {|s, idx| 
        Ship.new(params[:pirate][:ships][idx])}

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
