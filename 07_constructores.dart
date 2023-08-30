void main(){
  
  //se puede recibir un json desde una peticion http de esta forma 
  final Map<String, dynamic> rawJson = {
    'name':'Spider man',
    'power':'Trepar muros',
    'isAlive':true
  };
  
  //se crea la instancia de la clase hero basado en el json que le enviamos
  final iroman = Hero.fromJson( rawJson );
  
  //final iroman = Hero(
  //  name: 'Tony Stark',
  //  power: 'Money',
  //  isAlive: true
  //);
  
  print( iroman );
} 

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  //Hero({
  //  required this.name,
  //  required this.power,
  //  required this.isAlive
  //});
  
  //cuando se mira el nombre de la clase eso es un constructor 
  //despues del punto se pone el nombre que se le quire dar 
  // recibe el mapa y retorna los valores que se le asigan (valores que vienen en el json)
  Hero.fromJson( Map<String,dynamic> json )
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'Yes!' : 'No'}';
  }
}