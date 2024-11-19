import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() async{
  Future fetchData1(){ //事件1
    // return Future.delayed( Duration(seconds: 2), ()=>'data1');
    var url=Uri.parse("http://localhost/web/post.php?id=1");
    var res=http.get(url);
    return res;
  }
  Future<String> fetchData2(){ //事件2
    return Future.delayed( Duration(seconds: 3), ()=>'data2');
  }
  Future<String> fetchData3(){ //事件3
    return Future.delayed( Duration(seconds: 1), ()=>'data3');
  }

  List results = await Future.wait([fetchData1(),fetchData2(),fetchData3()]);

  print(results);
  if(results[0].statusCode == 200){
    // print(resp.body);
    
    var data_json = jsonDecode(results[0].body);
    print("data_json: ${data_json}");
    print("title: ${data_json['title']}");
    
  }else{
    print(results[0].statusCode);
  }


}