void main() {
  // 資料型態的宣告方式
  String dog_name="wang";
  dog_name="little white";
  print("狗子叫做 $dog_name");
  // var宣告方式
  var cat_name="meme";
  print("主子叫做 $cat_name");
  
  
  //=====================================  
  var a=1000;
  a=10;
  //a='說你好'; //這個會噴錯
  print(a);
  
  //print(cat_name is String);
  print(cat_name == "memi");
  print(cat_name.runtimeType);
  
  
  //=====================================
  print("========Object 型別 vs Dynamic 型別");
  // Object 型別 vs Dynamic 型別
  print("*Object");
  Object x;
  x="foo bar";
  print("$x 是 ${x.runtimeType}");
  x=10;
  print("$x 是 ${x.runtimeType}");
  
  print("*dynamic");
  dynamic y;
  y=1000;
  print("$y 是 ${y.runtimeType}");
  y='天線寶寶說你好';
  print("$y 是 ${y.runtimeType}");

  // dynamic跟 Object不同點
  // x: object
  // y: String
  
  //int i=x; // <= 這個會error
  int i = x as int; // 將 x轉換為 int
  //dynamic=> 會自動轉換成目標變數的型態
  String s=y;
  print("i=$i");
  print("s=$s");

  //=====================================
  // null 
  print("======null \ndynamic可以是 null\n但 Object不可為 null");
  // dynamic可以是 null
  // 但 Object不可為 null
  dynamic data=null;
  //Object obj=null;
  print("data=$data");

  //Object型別只擁有Object的屬性. 
  y.length;
  x ="hello";
  //x.length; // Object x沒有這個屬性.

  //=====================================
  print("========num型別 可以表示 int 及 double");

  // num型別 可以表示 int 及 double.
  int i2=12;
  // i2=1.2;
  print("i2=$i2");

  num n=12;
  print("num n=$n, type=${n.runtimeType}");
  n=1.2;
  print("num n=$n, type=${n.runtimeType}");
  n=33;
  print("num n=$n, type=${n.runtimeType}");

  // 字串中如何讀取變數.
  print("========字串中如何讀取變數");
  String s2="我是s2字串";
  print("This class is $s2");
  print("THis class is ${s2}");
  print("aiot length: ${s2.length}");
  print("aiot length: $s2.length"); // 相當於直接輸出 s2 然後 concat上 .length這字串.

  print("========字串連接");
  // 字串連接.
  String s3="xxx";
  String s4="YYY";
  print("s3=$s3, s4=$s4, s3+s4=${s3+s4}");

  // "hello".length; //取得"hello"字串的屬性length
  
  //=====================================
  print("========字串切割");
  String l1 = "This is a class named aiot.";
  print(l1.split(" "));
  //物件.方法1.方法2 <= 可以連續調用, 但需要確定方法1的型別; 這裡跟python也相同
  print("${l1.split(" ")} is ${l1.split(" ").runtimeType}"); 
  
  //=====================================
  print("========子字串功能");
  String l2 = "This is a class named AIOT."; 
  print(l2.substring(3));   //從index=3 開始取到結尾.
  print(l2.substring(3,8)); //從index=3 開始取到 7(8-1).

  //=====================================
  print("========常見資料轉換");
  // String => int
  int one=int.parse("1248");
  print("${one} is a ${one.runtimeType}");
  
  // String => double
  double d2=double.parse("84.21");
  print("${d2} is a ${d2.runtimeType}");

  // int => String
  String s13=16384.toString();
  print("${s13} type= ${s13.runtimeType}");

  // double => String
  String pi=3.1415926.toString();
  print(pi);
  String pi_2=3.1415926.toStringAsFixed(3); // 到小數點第3位
  print(pi_2);

  //=====================================
  print("========Boolean true/false");
  bool b1 = false;
  print("b1=${b1}");
  
  //=====================================
  print("========除0 處理");
  double div0=0/0;
  print(div0);
  double div1 = 1/0;
  print(div1);

  var jj; // 空的資料
  print("jj=${jj} type is ${jj.runtimeType}");
  jj="hello";
  print("jj=${jj} type is ${jj.runtimeType}");
  jj=65535;
  print("jj=${jj} type is ${jj.runtimeType}");
}
