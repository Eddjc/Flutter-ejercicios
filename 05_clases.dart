void main (){
  
  //creamos una instancia de la clase Heroe
  final Heroe wolverine = Heroe(nombre:'Logan', poder: 'Regeneracion');
  
  print( wolverine );
  print( wolverine.nombre );
  print( wolverine.poder );
}

class Heroe {
  //Propiedades de la clase
  String nombre;
  String poder;
  
  //inicializando las variables en el constructor esto se ejecuta en el momento que se crea la instancia 
  //Heroe( String pNombre, String pPoder)
    //: nombre = pNombre,
     // poder = pPoder;
  
  //inicializamos las variables de una forma mas corta 
  Heroe ( {
    required this.nombre, 
    this.poder = 'Sin poder' 
  });
  
  //Sobreiscribe el metodo toString()
  @override
  String toString(){
    return '$nombre - $poder';
  }
  
}
