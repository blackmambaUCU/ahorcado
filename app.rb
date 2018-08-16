require 'sinatra'

get '/' do
    erb :index
end

post '/Iniciar' do
    @letra=params[:A]
    @mensaje="Se ingreso la letra: #{@letra}"
    erb :iniciar
end

get '/Iniciar' do
    erb :iniciar
end
