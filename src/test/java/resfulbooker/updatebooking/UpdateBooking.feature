Feature: Update Booking
  Este servicio es utilizado para poder
  actualizar una reserva

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Verificar petición correcta para actualizar una reserva reciba 200
    * def SignInResponse = call read('classpath:common/CreateToken.feature')
    * def accessToken = SignInResponse.response.token
    * def CreateBookingResponse = call read('classpath:common/CreateBooking.feature')
    * def BookingId = CreateBookingResponse.response.bookingid
    Given path '/booking/' + BookingId
    And cookie token = accessToken
    And request
    """
    {
      "firstname" : "Giank",
      "lastname" : "Guzman",
      "totalprice" : 111,
      "depositpaid" : true,
      "bookingdates" : {
          "checkin" : "2018-01-01",
          "checkout" : "2019-01-01"
      },
      "additionalneeds" : "Breakfast"
    }
    """
  When method PUT
  Then status 200


