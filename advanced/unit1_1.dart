void main() {
  int a = 1;
  double b = 1.2;
  bool c = true;
  String str1 = "Hello";
  // ==== string.startsWith() ====
  // index:01234
  // str  :Hello
  print("\n======== startsWith()");
  print(str1.startsWith("he")); // false, pattern從0開始matching
  print(str1.startsWith("Hel")); // true, pattern從0開始matching

  print(str1.startsWith("el", 1)); // true, pattern 從index=1開始去matching字串. return true
  print(str1.startsWith("el", 0)); // false, pattern 從index=0開始去matching字串. return false

  // ==== string.endWith() ====
  print("\n======== endWith()");
  bool d = str1.endsWith("lo");
  print(d);

  // ==== string.contains() ====
  print("\n======== contains()");
  d = str1.contains("ll");
  print(d);
  d = str1.contains("le");
  print(d);

  // ==== RegExp ====
  print("\n======== RegExp()");
  String inputstr = "Hello World";
  RegExp regex = RegExp(r'ello'); // RegExp物件才有 hasMatch()方法,
  // r字串就去查詢用法, [A-Za-z0-9_] ... 之類的...
  print(regex.runtimeType);


  // ==== Collections ====
  print("\n==== Collections");
  print("\n======== List");
  // {Collections 集合物件型別}
  // List<var> listerr=[xx,yy,zz]; // 不能用 var
  List<dynamic> list1=[1,2,'3'];   // pass 這邊不會遇到 runtime error , 
  print(list1);
  List<dynamic> list2=["hello",-99,101,"world"];
  print(list2);

  print("\n======== Set"); // 元素內容不重複
  Set<int> set1={1,5,3};
  Set<String> set2={'你好','說你好'};
  print(set1);
  print(set2);

  print("\n======== Map"); // 相當於 python的 dict={ key1: val1, key2: val2,... }
  Map<String, int> map1={"你好":999, "天線寶寶":-1};
  print(map1);
  Map<String, dynamic> map2={"haha":"天氣好", "lalala":555};
  print(map2);

  print("\n======== List操作");
    
  list1=[0.1, 0.2, 1.3];
  print("list1=${list1}");

  print("list1=${list1}, removeat(1): ${list1.removeAt(1)}"); // [0.1, 0.2, 1.3] => [0.1, 1.3]一次就做完
  
  print("list1=${list1}");
  
  list1.add(0.2);
  print("list1=${list1}");
  list1.removeAt(1); // removeAt(index)
  print("list1=${list1}");

  list1.remove(0.1); // remove(value)
  print("list1=${list1}");


  print("\n======== Set操作");  
  set2={"banana","apple","grava","pineapple"};
  print("set=${set2}");
  set2.remove("grava");   // set物件沒有順序, 故沒有 removeAt
  print("set=${set2}");
  set2.add("cherry");
  print("set=${set2}");

  print("\n======== Map操作");
  Map<String, int> studentGrades={"A":85, "B":77, "C":59};
  print("key=${studentGrades.keys}");
  studentGrades.remove("C");   // Map物件也沒有順序, 故沒有 removeAt
  print("Map=${studentGrades}, key=${studentGrades.keys}");
  studentGrades["D"]=67;
  print("Map=${studentGrades}, key=${studentGrades.keys}");
  




}
