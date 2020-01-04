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
      name, weight, height = params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height]
      p = Pirate.new(name, weight, height)
      
      binding.pry
      erb :'pirates/show'
    end
  end
end
