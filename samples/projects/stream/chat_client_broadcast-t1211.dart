import 'dart:convert';
import 'dart:io';

void main(List<String> args) async{
  //存放路徑
  String url = 'ws://192.168.208.37:8000';
  //連線server, 建立通道
  var ws = await WebSocket.connect(url);

  //設置監聽server傳遞的訊息
  ws.listen((data){
    print(data);
  });

  //產生串流資料 client -> Server
  var inputStream = stdin.transform(utf8.decoder).transform(LineSplitter());
  //提示使用者第一筆資料要輸入暱稱
  print("Enter Your nick name: ");

  //處理串流資料
  await for(var line in inputStream){
    //發送訊息到server
    ws.add(line);

    //離開聊天室
    if(line == "exit"){
      break;
    }
  }
  //關閉通道
  ws.close();
  print("client offline!");
}