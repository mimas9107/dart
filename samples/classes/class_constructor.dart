class Point{
  int x;
  int y;

  Point(this.x, this.y);

  void showPoint(){
    print('Point: ($x,$y)');
  }
}


void main(){
  var p1=Point(10,20);

  p1.showPoint();

}