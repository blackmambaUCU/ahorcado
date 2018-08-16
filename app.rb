require 'sinatra'

@@palabra= "CASABLANCA".split
@@casilleros= "__________".split

def generarpalabra
	@@palabra.join
end

def buscaracierto(letra)
	#aciertos=0
	#pos=0
	#@@palabra.each do |caracter|
	#	if letra.to_s==caracter.to_s then
	#		aciertos+=1
	#		@@casilleros[pos]=letra
	#	end
	#	pos+=1
	#end
	#
	#aciertos
	return 4
end

def mostrarcasilleros()
	
end

#WEB
####

get '/' do
    erb :index
end

get '/Iniciar/:letra' do |letra|
    @mensaje="Eligio la letra: #{letra}"
    erb :iniciar
end

post '/Iniciar/:letra' do |letra|
    @mensaje="Eligio la letra: #{letra}"
    buscaracierto(letra)
    erb :iniciar
end

get '/Iniciar' do
    erb :iniciar
end

post '/Iniciar' do
    erb :iniciar
end
