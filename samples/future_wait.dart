void main() async{
  Future<String> fetchData1(){ //事件1
    return Future.delayed( Duration(seconds: 2), ()=>'data1');
  }
  Future<String> fetchData2(){ //事件2
    return Future.delayed( Duration(seconds: 3), ()=>'data2');
  }
  Future<String> fetchData3(){ //事件3
    return Future.delayed( Duration(seconds: 1), ()=>'data3');
  }

  List results = await Future.wait([fetchData1(),fetchData2(),fetchData3()]);

  print(results);

}