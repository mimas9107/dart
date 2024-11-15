
// class 類別:
class Point{
  //num x; // 這樣沒給值 compiler就不給過, 除非 設定為 num ?x;
  num? x;
  num y=0;
  static double z=1;

  Point(this.x, this.y); // 建構函數, 有2個參數要傳入.

  Point.origin(){
    x=0;
    y=0;
    // z=5;
  }
  Point.offset( num delta){
    
    x=x!+delta;
    y=y+delta;
  }
}

class Point3d{
  num? x;
  num? y;
  num? z;
  Point3d( {this.x, this.y, this.z} ); // 允許先都不傳值進來 constructor就初始化, 因此成員 x,y,z要先 ? null允許宣告
}

class Point3dv2{
  num? x;
  num? y;
  num? z;

  Point3dv2(num x,num y, num z){
    this.x=x;
    this.y=y;
    this.z=z;
  }
}

class Person{
  String? name;
  int _age=0; // private

  int get age => _age; // 取 private _age屬性 
}


void main(){
  dynamic pnt =Point(11,22);
  print(pnt.x);
  print(pnt.y);

  final p=Person();
  print(p?.name);

  final pnt3d = Point3d();

  final p2=Point.origin();
  print(p2.x);
  print(p2.y);
  // final p3=Point.offset(5);
  // print(p3.x);
  // print(p3.y);

  final p4=Point.origin();
  print("p4.x=${p4.x}, p4.y=${p4.y}, p4.z=${Point.z}");
  final p5=Point(99,88);
  print("p5.x=${p5.x}, p5.y=${p5.y}, p5.z=${Point.z}");

}