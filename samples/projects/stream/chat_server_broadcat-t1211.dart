import 'dart:io';

void main(List<String> args) async{
  //紀錄聊天室裡面成員: websocket id & nickname
  Map<WebSocket, String> clients = {};
  //存放nickname
  late String nickName;

  //啟動Server並開始監聽有沒有連線
  //var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8000);
  var server = await HttpServer.bind('192.168.208.30', 8000);
  //print('server started at ws://localhost:8000'); //127.0.0.1
  print('server started at ws://192.168.208.30:8000');

  //開始處理使用者傳遞國來的資訊
  await for(var req in server){
    //把http -> websocket
    if(WebSocketTransformer.isUpgradeRequest(req)){
      //建立websocket通道
      WebSocket ws = await WebSocketTransformer.upgrade(req);

      //監聽通道有沒有資料
      ws.listen((data){
        //client第一次連線時, 要記錄暱稱
        if(!clients.containsKey(ws)){
          //新增聊天室成員
          clients[ws] = data; //data=>nickName
          print("client $data connected...");
          //歡迎詞(針對處理當前連線的通道)
          ws.add("$data into Chat Room");
          //針對其他聊天室成員的資訊
          for(var client in clients.keys){
            client.add("目前聊天室裡有: ${clients.values}");
          }
        }else{ //溝通的內容
          //取得當前是誰在發送訊息nickName
          nickName = clients[ws]!; //!:告知一定有值
          print("Server Received: $nickName 傳遞 $data");

          //資訊轉運站, 執行廣播
          for(var client in clients.keys){
            if(client != ws){
              client.add("$nickName: $data");
            }
          }
        }
      },onError: (error)=>print(error) //發生錯誤時執行區塊
      , onDone: (){
          //結束某一個通道, 刪除clients中當前的使用者
          print("$nickName 離開聊天室...");
          //移除websocket
          clients.remove(ws);
          print("目前聊天室尚有: ${clients.values}");
          //將某人離開聊天室的資訊轉發其他人
          for(var client in clients.keys){
            client.add("$nickName 離開聊天室!");
            client.add("目前聊天室尚有: ${clients.values}");
          }
        }
      );
    }
  }
}