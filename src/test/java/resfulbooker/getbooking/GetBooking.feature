Feature: Get Booking
  Este servicio sirve para consultar
  la informacion de una reserva en particualar

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Verificar petición correcta con una reserva id reciba cod 200
    Given path '/booking/' + 5
    When method GET
    Then status 200

