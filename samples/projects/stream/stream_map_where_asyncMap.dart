void main(List<String> args){

  // 建立一個 Stream物件,
  var s=Stream.fromIterable([1,2,3,4,5,6,7]);

  // map() 組合技:
  s.map(
    (predata)=>predata*2
  ).listen(
    (data)=>print("mapped data: $data")
  );

  // where() 組合技:
  s.where( // 用 where功能做篩選
    (predata)=>predata.isEven
  ).listen(
    (data) => print("where data: $data")
  );

  // asyncMap() 組合技:
  s.asyncMap((predata) async {
    await Future.delayed(Duration(seconds: 2));
    return predata*2;
  }).listen((data){
    print("asyncMap data: $data");
  });

}