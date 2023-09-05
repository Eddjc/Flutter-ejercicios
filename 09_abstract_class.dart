//una clase abstracta no se puede instanciar
void main() {
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  //print (windPlant);
  print ('wind: ${ chargePhone( windPlant ) }');
  print ('nuclear: ${ chargePhone( nuclearPlant ) }');
}

//===============================================================================================================

//ejemplo de uso creamos una funcion para cargar el telefono recibe cualquier tipo de planta de energia de tipo 
//plant 
double chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ) {
    throw Exception('No hay suficiente energia para cargar el celular');
  }
  
  return plant.energyLeft - 10;
}

//===============================================================================================================
//se crea una enumeracion de los tipos de plantas
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft; //energia restante
  final PlantType type; //nuclear, wind, water
  
  //constructor 
  EnergyPlant({ 
    required this.energyLeft,
    required this.type 
  });
  
  //creamos un metodo que no regresa nada y recibe la cantidad
  void consumeEnergy( double amount);
  
}
//================================================================================================================

//heredamos de la clase abstracta con el extends
  class WindPlant extends EnergyPlant {

    //mandamos a llamar el constructor del padre y satisfacemos todo lo que necesita 
    WindPlant({ required double initialEnergy })
        : super( energyLeft: initialEnergy, type: PlantType.wind );
    
    //
    @override
    void consumeEnergy( double amount ) {
      energyLeft -= amount;
    }
  }
//================================================================================================================

//implements es mas especifico solo podemos usar un metodo en expecifico de la clase padre en cambio con el extends
//Heredamos todo lo que tiene la clase 
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
    void consumeEnergy( double amount ) {
      energyLeft -= (amount * 0.5);
    }
}