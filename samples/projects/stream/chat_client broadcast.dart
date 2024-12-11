import 'dart:convert';
import 'dart:io';

void main() async{
  String url='ws://127.0.0.1:8080';
  var ws=await WebSocket.connect(url);

  // server來的 prompt
  ws.listen((data){
    print(data);
  });
  // 輸入 nickname
  String nickname=stdin.readLineSync()??'Guest'; //如果沒有輸入就 assign後面的值 guest,
  ws.add(nickname);
  
  // 產生一個串流 for chat
  var inputStream = stdin.transform(utf8.decoder).transform(LineSplitter());
  // 把 client終端機上輸入的資料, 一行一行丟給 server,
  await for(var line in inputStream){
    // 結束通道的條件:
    if(line=="exit"){
      break;
    }
    // 把資料送到通道上,
    ws.add(line);

    // 等待 server回應,
    ws.listen((res){
      print("Received from server: $res");
    });
  }
  //通道結束,關閉
  ws.close();
  print("client off-line!");
}