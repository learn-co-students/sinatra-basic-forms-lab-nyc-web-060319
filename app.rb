require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/puppy' do
        @age = params[:age]
        @name = params[:name]
        @breed = params[:breed]
        erb :display_puppy
    end

    get '/new' do
        erb :create_puppy
    end
end
