require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

# shotgun app.rb -p 4567 (4567 is port)

get '/' do
  "Hello!"
end

get '/secret' do
    "test"
end

get '/add' do
    "add a string"
end

get '/random-cat' do
    @random_name = ["Andrew", "Paula", "Marius"].sample
    erb(:index)
end

post '/named-cat' do
    p params
    @random_name = params[:name]
    erb(:index)
end

get '/cat-form' do
    p params
    erb(:form)
end
