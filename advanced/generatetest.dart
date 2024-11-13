void main(){
  List<String> L1 = List<String>.generate(10,(index)=>"hello");
  print(L1);

  List<String> L2 = List<String>.generate(5,(index){ return "hello $index";});
  print(L2);

  List<int> L3 = List.filled(5, 0, growable: true);
  L3.add(1);
  print(L3);
}