import 'dart:convert';
import 'package:http/http.dart' as http;

Future fetchData(String url) async{
  var data;
  // 去連線到 url, url要透過 Uri物件去 parsing.
  var res= await http.get(Uri.parse(url)); 
  print(Uri.parse(url));
  if(res.statusCode == 200){
    //data是未來才發生的值.
    data=jsonDecode(res.body); 
  }else{
    return "error: ${res.statusCode}";
  }
  return data;
}

void main(){
  String url = "https://jsonplaceholder.typicode.com/todos/";

  var userIds=Stream.fromIterable([1,2,3,4,5]);
  
  userIds.asyncMap((userId) async{
    await Future.delayed(Duration(seconds: userId));
    var res_data=await fetchData(url+userId.toString());
    return res_data;
  }).listen((userData)=>print(userData));
  
}