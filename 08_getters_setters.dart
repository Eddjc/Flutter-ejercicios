void  main() {
  
  final mySquare = Square(side: -10);
  
  //mySquare.side = -5;
  
  print('Area: ${ mySquare.area }');
  
}

class Square {

  double _side; // side * side
  
  //constructor establecemos el valor del side
  Square({ required double side })
    : assert(side >= 0, 'Valor debe de ser >= 0'), //las aserciones son validaciones se ponen antes de insertar el valor a una variable
      _side = side;
  
  //el _ antes del nombre significa que el valor es privado eso quiere decir que solo puede ser accedido dentro de la clase Square
  double get area {
    return _side * _side;
  }
  
  //cambiamos el valor del _side
  set side(double value) {
    print ('setting new value $value');
    if (value < 0 ) throw 'valor debe de ser >= 0';
    
    _side = value;
  }
  
  //metodo para el calculo de la area
  double calculateArea() {
    return _side * _side;
  }
}