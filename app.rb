require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  session[:Player_1_name] = params[:Player_1_name]
  session[:Player_2_name] = params[:Player_2_name]
  erb(:play)
  redirect '/play'
end

get '/play' do
  @player_1 = session[:Player_1_name]
  @player_2 = session[:Player_2_name]
  erb(:play)
end

run! if app_file == $0
end
