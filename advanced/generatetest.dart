void main(){
  // L4 其實填入的 4個元素都是同一個指向 []的記憶體:
  List<dynamic> L4 = List.filled(4,[]);
  L4[0].add(123); // 這裡存取其中一個元素, 相當於產生了一組有 4個相同 List元素的 List.
  print(L4);

  // 為了避免用了 Filled會共用同樣的物件, 所以使用 generate.
  List<String> L1 = List<String>.generate(10,(index)=>"hello");
  print(L1);

  List<String> L2 = List<String>.generate(5,(index){ return "hello $index";});
  print(L2);

  List<int> L3 = List.filled(5, 0, growable: true);
  L3.add(1);
  print(L3);

  List<String> L5=[];
  for(int i=0; i<10; i++){
    // 作用域
    // local宣告的變數/函數, 只在 {}大括號裡有效.
    List<String> L5 = List<String>.generate(i,(index)=>"hello");
    print(L5);
  }
  print(L5);
}
