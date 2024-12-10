import 'dart:io';
void main(List<String> args) async{
  // 先等待建立 url & port完成:
  var server=await HttpServer.bind("192.168.208.37", 8080);
  // ws:// web socket協定
  print('server started at ws://127.0.0.1:8080');

  // 開始等待 user連線,
  await for(var req in server){
    //將 http轉換 ws
    if(WebSocketTransformer.isUpgradeRequest(req)){
      WebSocket ws = await WebSocketTransformer.upgrade(req);

      print("client connected...");

      // 監聽 user傳遞過來資訊,
      ws.listen((data){
        print("Server recieved: $data");
        // 從 server發送資料給 client,
        ws.add("Server echo: $data");
      });
    }

  }

}