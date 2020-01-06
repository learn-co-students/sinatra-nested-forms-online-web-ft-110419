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
     @pirate = Pirate.new(params[:pirate])

     params[:pirate][:ships].each do |ship|
      Ship.new(ship)
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
