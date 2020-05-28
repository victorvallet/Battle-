require 'sinatra/base'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base

get '/' do
  p params
  @name = params[:name]
  erb(:index)
end

post '/names' do
    @name = params[:name]
    erb(:play)
end

run! if app_file == $0
end
#
# get '/secret' do
#   'this is not secret'
# end
