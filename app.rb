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
     @p = Pirate.new(params[:pirate])

     params[:pirate][:ships].each do |ship|
      Ship.new(ship)
     end
     @s1 = Ship.all.first
     @s2 = Ship.all.last
     
      erb :'pirates/show'
    end
  end
end
