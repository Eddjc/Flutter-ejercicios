  void main() {

    emitNumber().listen( ( int value) {

      print('Sream value: $value'); 
    });
  }

  //asunc* esta relacionada a una funcion que retorna un valor de tipo stream
  Stream<int> emitNumber() async* {

    final valuesToEmit = [1,2,3,4,5];

    for(int i in valuesToEmit){
      await Future.delayed( const Duration(seconds: 1) );
      yield i;
    }
  }