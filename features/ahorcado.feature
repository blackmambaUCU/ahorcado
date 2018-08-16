Feature: Ahorcado

Scenario: Pagina inicial
When inicio la aplicacion
Then veo "AHORCADO"

Scenario: Pagina inicial
When inicio la aplicacion
Then veo boton "Iniciar"

Scenario: Jugando
Given en pantalla de juego
When selecciono letra "A"
Then confirmar seleccion letra "A"


