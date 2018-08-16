require 'sinatra'

@@palabra= "CASABLANCA"

def generarpalabra
	@@palabra
end

def buscaracierto(letra)
	return 4
	#@@palabra.sub(letra)
end


get '/' do
    erb :index
end

post '/Iniciar/:letra' do |letra|
    @mensaje="Eligio la letra: #{letra}"
    erb :iniciar
end

get '/Iniciar' do
    erb :iniciar
end

post '/Iniciar' do
    erb :iniciar
end
