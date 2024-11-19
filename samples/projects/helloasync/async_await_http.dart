import 'dart:convert';

import 'package:http/http.dart' as http;
Future<void> main(List<String> args) async{
  var url=Uri.parse("http://localhost/web/post.php?id=1");
  
  var resp=await http.get(url); //這邊會花時間等 server回傳. await會將程式停住等待
  print(resp);
  if(resp.statusCode == 200){
    // print(resp.body);
    
    var data_json = jsonDecode(resp.body);
    print("data_json: ${data_json}");
    print("title: ${data_json['title']}");
    
  }else{
    print(resp.statusCode);
  }
}