void main() async {
  
  print('Inicio del programa');
  
  try {
    //await le dice que se espere el resultado de la funcion httpGet la cual es una funcion asincrona 
    //y luego que responde se continua con el print  
    final value = await httpGet('https:/hola-mundo/ok');
      print ( value );
  
    print('Fin del programa'); 
  }catch (err) {
    print ('Tenemos un error: $err');
  }
  
  //httpGet('https:/hola-mundo/ok')
  //  .then( (value) {
  //     print( value ); //si todo va bien imprime el valor 
  //    })
  //  .catchError((err) { //con es el catch tenemos unn error controlado 
  //    print('error: $err');
  //  });
  
  //print('Fin del programa');
}
 

//una funcion asincrona siempre va a retornar un future
Future<String> httpGet( String url ) async {
  
  //await espera a que el future se realice, cuando se realiza hace el return 
  await Future.delayed( const Duration(seconds: 1));
  
  //throw 'Error en la peticion http';
  
  return 'Tenemos un valor de la peticion';
  
//  return Future.delayed( const Duration(seconds: 1), () {
    
    //throw 'Error en la peticion http';
    
  //  return 'Respuesta de la petición http';
  //});
}