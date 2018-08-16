require 'sinatra'

get '/' do
    erb :index
end

post '/Iniciar' do
    erb :iniciar
end
