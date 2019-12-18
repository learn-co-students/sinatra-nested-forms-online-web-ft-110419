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
      @pirate = Pirate.new(params['pirate'])
      params['pirate']['ships'].each {|s| Ship.new(s) }
      @ships = Ship.all
      erb :'pirates/show'
    end 
  
  
  end
end
