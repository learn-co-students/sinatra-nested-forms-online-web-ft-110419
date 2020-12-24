require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
      get '/' do
        "Welcome to the Nested Forms Lab!"
      end

      get '/new' do
        erb :'pirates/new'
      end

      post '/pirates' do
        puts params
        @pirate = Pirate.new(params[:pirate])

        params[:pirate][:ships].each do |ship|
          Ship.new(ship)
        end
          #Can iterate this but for visual purposes hard coded
        @ship1 = Ship.all[0]
        @ship2 = Ship.all[1]

      erb :'pirates/show'
      end

  end
end
