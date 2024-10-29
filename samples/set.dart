void main(){
  // set := collection, 跟 List一樣有順序性, 但 元素值不可重複, 代表符號: {}
   
  // 宣告 並初始化:
  Set s1={1,2,3,4,"d"};
  var s2=Set();    // empty set object by class constructor
  var s3=new Set();// empty set object

  var s4=Set.from({1,2,3,4,"d"});

  print("s1: ${s1}");
  print("s2: ${s2}");
  print("s3: ${s3}");
  print("s4: ${s4}");

  // 添加 新元素:
  s2.add("abcd");
  print("s2: ${s2}");
  s3.addAll(s1);
  print("s3: ${s3}");
  s3.addAll(s1);
  print("s3: ${s3}");



  // 取值 要用 elementAt()方法:
  print("s3.elementAt(3): ${s3.elementAt(3)}");

  // 找 set中 某個元素值:
  print("s3.contains(\"d\"): ${s3.contains("d")}");

  // 刪除某個值:
  s3.remove(4);
  print("s3: ${s3}");

  // 走訪每元素:
  s1.forEach((element)=> print(element));

  // set 轉 list:
  List L1=s1.toList();
  print('L1: ${L1}');

  // ====================================
  // set的 UNION, INTERSECT, DIFFERENCE
  Set s5={1,2,3,4,5};
  Set s6={1,2,10,12,28};
  // 聯集 union()
  print("s5.union(s6) : ${s5.union(s6)}");
  // 交集 intersection()
  print("s5.intersection(s6) : ${s5.intersection(s6)}");
  // 差集 difference()
  print("s5.difference(s6) : ${s5.difference(s6)}");
  print("s6.difference(s5) : ${s6.difference(s5)}");


  // ====================================
  // list to set
  List L2 = [1,2,2,2,3,4,5,6,3,2];
  Set s7 =L2.toSet();
  print("L2: ${L2} , toSet => s7 : ${s7}");

  // 不能直接用 []索引去 asign set內元素:
  //s7[2]=90; // X error!!
}