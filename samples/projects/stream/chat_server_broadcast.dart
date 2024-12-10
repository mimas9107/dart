import 'dart:io';
void main(List<String> args) async{
  Map<WebSocket, String> clients={};

  // 先等待建立 url & port完成:
  var server=await HttpServer.bind("192.168.208.37", 8080);
  // ws:// web socket協定
  print('server started at ws://127.0.0.1:8080');

  // 開始等待 user連線,
  await for(var req in server){
    //將 http轉換 ws
    if(WebSocketTransformer.isUpgradeRequest(req)){
      WebSocket ws = await WebSocketTransformer.upgrade(req);

      
      ws.add("Enter your name: ");
      // 監聽 user傳遞過來資訊,
      ws.listen((data){
        if(!clients.containsKey(ws)){
          clients[ws]=data;
          print("client $data connected...");
          ws.add("Welcome $data into chat room!");
        }else{
          String nickname=clients[ws]!; // 有可能為空
          // 轉發訊息給其他人
          for(var client in clients.keys){
            if(client!=ws){
              client.add("$nickname : $data");
            }
          }
          print("Server recieved: $nickname=> $data");
        }
        
        
      });

      // 當某一個 client斷線,
      ws.done.then((_){
        clients.remove(ws);
        print(" Client disconnect, this are still ${clients.length} people.");
      });
      
    }

  }

}