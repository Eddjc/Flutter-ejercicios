//los streams son un flujo de datos que puede ser un unico valor, ningun valor o una serie de valores a lo largo del tiempo

void main() {
  
  //listen() se obtiene el valor que viene producto del stream
  emitNumbers().listen( (value) {
    print ('Stream value: $value');
  });
}


//<>lo que esta adentro es del tipo de valores que va a fluir en el stream
Stream<int> emitNumbers() {
  //periodic emite valores de 1,2,3..n cada segundo hasta que se cierre 
  return Stream.periodic( const Duration(seconds: 1), (value) {
    return value;
  }).take(5); // se le dice que solo emita 5 valores  
}

