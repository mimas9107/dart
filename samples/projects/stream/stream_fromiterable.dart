void main(List<String> args) {
  print("main start");
  // 透過 fromIterable建立一個資料流.
  var s=Stream.fromIterable([111,2222,33333]);

  int i=0;
  //建立監聽事件發生, 接收結果並處理對應事件
  s.listen(
    (data){
      i++;     
      print("收到第${i}筆資料: ${data}");
    
    }
  );

  print("main stop");

}