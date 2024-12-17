class Car{
  static int _totalCarSold=0;
  static double _total=0;
  
  String _model;
  double _price;

  Car(this._model, this._price);

  void sell(){
    _totalCarSold++;
    _total += _price;
  }

  //靜態方法(類別方法),
  static int getTotalCarSold(){
    return _totalCarSold;
  }
  static double getTotalSells(){
    return _total;
  }
}

void main(){

  var car1 = Car('toyota camry', 25000);
  var car2 = Car('toyota altis', 22000);

  car1.sell();
  car2.sell();
  
  print("total cars sold: ${Car.getTotalCarSold()}");
  print("total sales: ${Car.getTotalSells()}");

}