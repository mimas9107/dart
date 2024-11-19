void main() async{
  List<Future<String>> fetchDataList=[
    Future.delayed(Duration(seconds: 1), ()=>"data 1"),
    Future.delayed(Duration(seconds: 5), (){print("2 working,");return "data2";}),
    Future.delayed(Duration(seconds: 3), ()=>"data 3"),
  ];

   await Future.forEach(fetchDataList, (future)async{
    var res= await future;
    print(" result: $res");
  });
}