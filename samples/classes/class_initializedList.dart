class Temperature{
  late double C;
  late double F;

  Temperature(double C): C=C, 
  F=(9*C/5+32){
    if(C<-273.15||F<-459.67){
      throw ArgumentError('Invalid temp value');
    }
  }

  void display(){
    print('Celsius: $C, F:$F');
  }


}

void main(){
  try{
    var temp=Temperature(25);

    temp.display();
  } catch(e){
    print('error: $e');
  }
}