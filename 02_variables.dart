void main (){

  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['xforce.png', 'force.jpg'];
  
  
  //para hacer una concatenacion de variables se usa el tripe comillas
  print ("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
  """);
  
}