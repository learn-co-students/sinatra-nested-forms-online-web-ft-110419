require './environment'

module FormsLab
  class App < Sinatra::Base

      get '/' do 
        erb :root
      end
    
      get '/new' do 
        erb :'pirates/new'
      end

      post '/pirates' do
        name = params[:pirate][:name]
        height = params[:pirate][:height]
        weight = params[:pirate][:weight]
        @pirate = Pirate.new(name, weight, height)


        params[:pirate][:ships].each do |ship|
          name = ship[:name]
          type = ship[:type]
          booty = ship[:booty]
          Ship.new(name, type, booty)
        end
        @ship_name_1 = Ship.all.first.name
        @ship_type_1 = Ship.all.first.type
        @ship_booty_1 = Ship.all.first.booty
        @ship_name_2 = Ship.all.last.name
        @ship_type_2 = Ship.all.last.type
        @ship_booty_2 = Ship.all.last.booty

        erb :'pirates/show'
      end
      

  end
end
