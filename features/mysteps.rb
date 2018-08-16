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

