void main(){
  var x,y=9;
  print("x: $x");
  print("y: $y");

  assert(x==null);
  print("x: $x");
  print("y: $y");
  
  assert(y<8);
  print("x: $x");
  print("y: $y");

  // assert 檢查功能要在終端機指令啟用
  // dart run --enable-asserts yourcode.dart
}