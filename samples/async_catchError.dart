import 'dart:math';

Future getInt() async{
  print("getInt() start...");
  Random r = Random();
  // (()=>throw Exception("error from getInt"))(); // 這邊丟出的例外會被 main中的呼叫定義 catchError抓到.
  return r.nextInt(100); 
}


void main(){
  print("main() start..");

  // 下面這行 點點可以寫成一列: getInt().then().catchError().whenComplete();
  
  getInt()
  .then((res)=>print("res: $res"))
  .catchError((error)=>print(error))
  .whenComplete(()=>print("async complete!"));

  print("main() end!");
}