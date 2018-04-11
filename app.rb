require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  get '/make_puppy' do
    binding.pry
    @newpuppy = Puppy.new(params["name"], params["breed"], params["age"])
    erb :display_puppy
  end

end
