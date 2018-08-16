require "./app.rb"



describe 'Ahorcado' do


  it 'Palabra Clave' do
 	#t=Tenis.new()
	#pal=generarpalabra
	expect(generarpalabra).to eq "CASABLANCA"
  end

  it 'BuscarAcierto' do
	expect(buscaracierto("A")).to eq 4
  end
end
