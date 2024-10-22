void main(List<String> args){
  // list宣告
  // 可變長度
  List l1=[12,3,4];     // element: int
  var l2=['a','b','c']; // element: String
  // 取值
  print("l1[1]= ${l1[1]}");
  // 設定
  l2[0]='d';
  print("l2=${l2}");

  // 一次只添加一種元素
  l1.add(['a',true]);    
  print("l1= ${l1}");    // [12,3,4,['a',true]]
  print(l1[3]);          // ['a',true]
  
  // 一次添加多個元素, 相當於拆開 [hi,hello]分別加入 l2
  l2.addAll(['hi','hello']);
  print("l2: ${l2}");
  
  // 透過泛型<> 限制容器內的元素為相同型別
  List<int> l3 = [11,22,44];
  // l3.add('aa'); // error
  
  var l4=<String>['string1','string2','string3'];
  print("${l4[0]}有 ${l4[0].length}個字");


  // 刪除元素
  // remove(可指定元素值)
  // removeLast() 刪最後
  l4.remove("string2");
  print("remove(\"string2\"): l4=${l4}");
  l4.removeLast();
  print("removeLast(): l4=${l4}");

  //初始化 List給不同資料型態:
  var l5=[0, 12.3, 'hi', true, ['a',12,false]];
  l5.add('world');
  print("l5= ${l5}");
  //print("l5[2]有 ${l5[2].length}個字元"); // error: l5 中元素皆為 object型別.
  // 因此第3個元素要轉型別才可:
  print((l5[2] as String).length);

  //print(l5[4][2]); // error: l5 中元素皆為 object型別. 因此 [2] index無法操作 
  // 第5個元素也要轉型別 [2]才能操作:
  print((l5[4] as List)[2]); 


  // 固定長度:
  var l6= List.filled(8,0);
  print("List.filled(8,0): l6=${l6}");
  //l6.add(10); // error: l6=fixed length
  l6[0]=99;
  print("l6=${l6}");

  l6.setAll(2, [10,20,30]); // 從 index=2的位置開始用 iterable依序修改 l6的值
  print("setAll(index, iterable): l6=${l6}");
  
  // insert(index, data)
  var l7 = [64, 70.9, 'fdfe',true,'5b',false];
  l7.insert(1,"dart");
  print("insert(1,\"dart\"): l7=${l7}");
  
  // indexOf(比對資料) 會回傳第一次比對到的位置, 若無, 則回傳 -1
  int i = l7.indexOf('fdfe');
  print(i);

  // sublist(起始位置,[結束位置]) 取子串列
  List l8=l7.sublist(2);
  print("sublist(起始位置): l8= ${l8}");
  List l9=l7.sublist(2,l7.length-1);
  print("sublist(起始位置,[結束位置]): l9= ${l9}");

  // remove(資料)
  print(l7.remove(70.9));
  print("remove(資料): l7= ${l7}");

  // removeAt(資料所在位置)
  print(l7.removeAt(2));
  print("removeAt(資料所在位置): l7= ${l7}");

  // clear() 清除所有值
  l7.clear();
  print("clear() 清除所有值: l7= ${l7}");

  // for-loop走訪容器: //跟 python概念相同
  List l10 = [1,2,4,8,16,32];
  for(int item in l10){
    item = item*2+9;
    print("item= ${item}");
  }

  // while-loop走訪:
  // 需要借助 iterator幫忙
  var list_iter = l10.iterator;
  while(list_iter.moveNext()){
    print(list_iter.current*2+9);
  }

  // list物件的方法 foreach(函式)
  // 箭頭函式: (參數)=>回傳值
  l10.forEach((element)=>print("element=${element}"));

  // list物件的方法 map(函式)
  List l12 = l10.map((v)=>v*2+11).toList(); // 直接 map=>處理成新的 list
  print("l12=${l12}");



  
}