function fn() {
    karate.configure('connectTimeout', 60000); //Para configurar el tiempo máximo de conectividad
    karate.configure('readTimeout', 60000);    //Para configurar el tiempo máximo de lectura
    karate.configure('logPrettyResponse', true); //Para configurar la activación de los logs fácil de entender

    var config = {

        baseUrl : 'https://restful-booker.herokuapp.com'

    }

    return config;

}




