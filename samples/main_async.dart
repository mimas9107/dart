Future<void> main() async{
  
  print("main start...");
  // 這樣就算 main非同步, 到這步還是要等 delay完
  var res = await Future.delayed(Duration(seconds: 5),()=>10);
  
  print("res= $res");

  print("main end");
}