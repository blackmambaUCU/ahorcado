When(/^inicio la aplicacion$/) do
	visit '/'
end

Then(/^veo "(.*?)"$/) do |titulo|
	last_response.should have_xpath( "//title") do |t|
		t.should contain(titulo)
	end
end

Then(/^veo boton "(.*?)"$/) do |boton|
  	click_button(boton) 
	last_response.should have_xpath( "//title") do |t|
		t.should contain("AHORCADO - Jugando")
	end	
end

Given(/^en pantalla de juego$/) do
  visit '/Iniciar'
end

When(/^selecciono letra "(.*?)"$/) do |letra|
	click_button(letra)
end

Then(/^confirmar seleccion letra "(.*?)"$/) do |letra|
	last_response.body.should =~ /#{letra}/m
end


