import 'dart:convert';
import 'dart:io';

void main() async{
  String url='ws://192.168.208.37:8080';
  var ws=await WebSocket.connect(url);

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