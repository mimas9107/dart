void main(){
  var i; // var宣告, 沒有初始值的話, i=null 
  i=8;
  print(i*8); // run time error exception will be occurred

  int? a; // a 可以是 null, 也可以是 int.
  int b;  // b 只可以是 int.
  print(a); // 取值不會發生問題
  
  //print(a+1); // a=null 不能做運算
  //print(b); // b 不允許為空, 沒有值, 連取值都不能操作.
  
  // late延後檢查:
  late int c;
  c=3;
  print(c*9);

  int? j;
  j=5;
  if(j != null){
    j=j*2;
    print("${j}");
    j!=j+2; // 告知 compiler j保證有值

  }else{
    print("j: $j");
  }



  // operators
  int x=10, y=3;

  print("x=$x, y=$y, x/y= ${x/y}, runtime type: ${(x/y).runtimeType}");

  print("取餘數 x%y: ${x%y}");
  print("取商數 x~/y: ${x~/y}");


  // ++, --
  x=11;
  print("x=$x, x++: x=${x++}");
  print("x=$x ");
  x=11;
  print("x=$x, ++x: x=${++x}");
  print("x=$x ");

  // ??= 變數空值判斷 若是空的就把 等號右邊的值, 賦值給變數
  int? x1;     // 宣告 x1可以為空
  x1 ??= 2;    // x1為空, x1指定為 2
  print("x1: ${x1}");
  x1 ??= 12;   // x1不為空, x1就不指定 null
  print("x1: ${x1}");

  // comparison
  print(1<10);
  print(1>10);

  // logical operation
  print((1<10) && (1>10));
  print((1<10) || (1>10));
  print(!(1<10));

  // Conditional operators ( ? : )
  // condition? exp1:exp2
  (1<3)?print(true):print(false);
  int what = (1<10)? 1:0;
  print(what);

  // ?? 空判斷, 判斷 ??左側的值是否為空.
  var x3;
  var x4 =10;
  int default_value=10;
  int x5 = x3 ?? default_value; // 判斷 x3 是否為空, 是就以 default_value給 x5值
  print("x5: $x5");



  // ?. => 檢查前面物件是否為空, 若為空則傳回null, 若不為空則操作點符
  String str1;
  str1="dart";

  String? str2;
  //str2.length; // 還沒有給值, 錯
  str2?.length; // 沒有出錯
    // 下面兩行等效:  
  print(str2?.length);
  print(( str2 != null)?str2.length: null);

  str2="dart2";
  str2.length;


  // ...? 擴展容器, ...?會檢查右邊物件是否為空, 若為空不展開, 不為空則展開.
  var List1 = <dynamic>[1,2,3,4,5]; // int -> dynamic 
  List List2 = [6,7,8,9];
  List? List3; // null
  List1 = [...List1, ...List2, ...?List3]; 
  
  print("List1: ${List1}");


  Map? m1;
  print(m1?.runtimeType);

}