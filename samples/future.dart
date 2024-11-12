void main(){
  print("main start...");
  // future 處理非同步
  Future f1=Future.value(52);
  f1.then((value){
    print("Future.value async complete: value=${value}");
  });

  // Future.delayed產生一個 future表示一個非同步機制(模擬耗時動作)
  var f2 = Future.delayed( Duration(seconds:5), ()=>print("Future.delayed 5秒後完成的非同步動作"));
  

  //delay + value:
  Future.delayed(Duration(seconds: 3), ()=>Future.value("delay+value的非同步動作執行後的值")).then((result)=>print("result= $result"));


  print("main end.");
}