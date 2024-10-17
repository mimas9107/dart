void main(){
  print(""" 
  Dart程式語言進階,
  字串寶寶說你好!
  2024/10/17
  """);
  
  print("\n[toLowerCase, toUpperCase]");
  String str = "Hello world!";
  String lowerCaseStr = str.toLowerCase();
  String UpperCaseStr = str.toUpperCase();
  print("原來的字串:${str},小寫:${lowerCaseStr}, 大寫:${UpperCaseStr}");
  
  print("\n[trim]");
  String str2="    <=兩邊有空白=>    " ;
  String trim_str2=str2.trim();
  print("原來的字串:${str2} , 去除空白trim()的字串:${trim_str2}");
  
  print("\n[padLeft, padRight]");
  String padleftstr=str.padLeft(20,"%");
  String padrightstr=str.padRight(20,"#");
  print("20空位原字串塞完剩下往左填充%: ${padleftstr}");
  print("20空位原字串塞完剩下往右填充#: ${padrightstr}");

  print("\n[split(\"seperater\")]");
  String str3="Hi I'm Justin";
  List<String> name3 = str3.split(" ");
  print("原字串:${str3}, 切割成:${name3}");
  List<String> name4 = str3.split(",");
  print("用,切割:${name4}");// 等於沒切割

  print("\n[join]");
  List<String> doraemon=["多拉a夢","大雄","胖虎","小夫","靜香"];
  print("${doraemon}有${doraemon.length}個元素");
  print("連接後\"${doraemon.join("+")}\",長度為${doraemon.join("+").length}個字,中文字算1個字元");

  print("\n[replaceAll(from,replace)]");
  String str4 = "Helloworld";
  print("原字串:${str4}, 將 l取代成 i:${str4.replaceAll(RegExp(r"l"), "i")}");

  print("\n=========================");
  print("試試看");

  //1 
  String str5="   Hello World ";
  print("1.");
  print("小寫是: ${str5.toLowerCase()}");

  print("\n");
  //2
  print("trim()去除字串尾空格; 原字串:${str5}, 去除後:${str5.trim()}");


}