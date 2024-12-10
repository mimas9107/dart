void main(List<String> args){
  // normal
  var s=Stream.fromIterable([1,2,3,4]);
  // failure 
  var ss=Stream.error("An error occured!");
  
  ss.listen(
    // 成功會執行的動作:
    (d){print("[listen] d: ${d}");},

    // 失敗會執行:
    onError: (error){
      print('[listen] error: ${error}');
    },

    //不管成功失敗都會執行:
    onDone: (){
      print("[listen] Stream is done!");
    },
  );
}