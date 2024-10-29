void main(List<String> args){
 
  // map: 類似字典, key:value pair, ; 而 key不能重複.
  // { key1:value1, key2:value2, ...}
  
  Map m1={'name':'John', 'age': 22};
  var m2=Map();
  var m3=Map.from({'name':'JoJo','age':19});

  print("m1: ${m1}");
  print("m2: ${m2}");
  print("m3: ${m3}");

  // add new element:
  m1['course']="japanese";
  print("m1: ${m1}");

  // 取得所有 key:
  print("m1.keys : ${m1.keys}");
  print("m1.keys.toList() : ${m1.keys.toList()}");
  // 取得所有 value:
  print("m1.values : ${m1.values}");
  print("m1.values.toList() : ${m1.values.toList()}");

  // 一次塞多個 key:value addAll()
  m1.addAll({'dept':'ce','email':'abc@xyz'});
  print("m1: ${m1}");

  // 刪除
  m1.remove('name');
  print("m1.remove(\'name\') m1: ${m1}");


  // 走訪元素:
  m1.forEach( (key,value)=>print("${key} : ${value}") );


}