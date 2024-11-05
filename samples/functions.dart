void main(){

  /*
  function: 
  1. name <= dart有匿名 所以 [name]
  2. arguments: (type parameter_name, ...)
  3. return value: type
  4. function body{ statements }

  function為一物件, 具有屬性、方法, 可以把 function當成 參數 與 回傳值,
  */

  // 1. 無參數 無回傳
  void func1(){
    print("func1");  
  }
  func2(){
    print("func2");
  }

  //※ 2. Function物件形式的宣告:
  Function func3;
  func3=func1;
    //執行函式: 函式名稱()
    // ()功能: 傳遞參數 , 執行函數
  func3();
  func3 = func2;
  func3();
  
  Function func4=(){print("func4");};
  func4();

  // arrow function 箭頭函式
  func5()=>print("func5");
  func5();
  

  func6(int a, int b){
    print(b-a);
  }
  
  // 所定義的引數,與參數數目要相符,順序要注意否則都會計算但結果可能不符預期:
  func7(int a, int b)=>print(b-a);
  func6(1,2);
  func7(3,5);

  func3=func7;
  func4=func6;

  func3(3,2);
  func4(3,2);

  // 可選參數: [] 要擺放在參數列最後
  String say(String from, String msg, [String? device]){
    var r = "$from says $msg";
    if(device !=null){
      r = "$from says $msg with $device";
    }
    return r;
  }
  print(say("Justin", "helloworld!", "phone"));

  // 可選的命名參數: 可不按照位置順序填寫, 然後傳遞值用 parameter name : value這樣傳進去.
  void enFlag({bool? bold, bool? hidden}){
    print("bold: ${bold}");
    print("hidden: ${hidden}");
  }  
  enFlag(hidden: true, bold: false);
  enFlag(hidden: true);
  enFlag();

  // 預設參數初始值
  getHttpUrl(String server, String path, {int port=80}){
    if(port==80)
      print("url: https://$server/$path");
    else
      print("url: https:$port//$server/$path");
  }
  getHttpUrl('example.com', 'index.html');
  getHttpUrl('10.10.20.33', 'index.html',port: 8080);

  // 有回傳值: 關鍵字 return
  String func8(){
    return "func8";
  }
  func8();
  print(func8());

  Function func9 = (){return "func9";}; //dynamic type determined by return 
  

  String Function() func10;
  func10 = (){
    return "func10 hello";
  };
  String Function() func11 =()=>"hello func11";
    // 這邊 func10 可以被 func11賦值.
    
  String Function(int) func12 = (s)=>'$s';

  print(func9());print(func9().runtimeType);
  print(func10());print(func10().runtimeType);
  print(func11());print(func11().runtimeType);
  print(func12(12));print(func12(12).runtimeType);
}