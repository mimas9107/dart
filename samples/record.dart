void main(){
  // 宣告
  (double value, String name, {String isValid}) r1 = (3.1415, "pi", isValid: "real");
  
  // 用位置index指定取值方式
  print("r1.\$2= ${r1.$2}");
  
  // 命名參數的取值方式
  print("r1.isValid= ${r1.isValid}");
  

  // 函式回傳值為 record
  (String, int) userInfo(Map<String,dynamic> json){
    return (json['name'], json['age']);
  }
  Map<String,dynamic> json={'name':'justin', 'age':12, 'color':'blue'};
  var (name, age) = userInfo(json);
  print("name=${name}, age=${age}");
  
  var r5= userInfo(json); 
  print("r5.\$1: ${r5.$1}, r5.\$2: ${r5.$2}");

  //swap
  (int, int) swap((int,int) record){
    var (a,b) = record;
    return (b,a);
  }
  var r6=(23,57);
  var res = swap(r6);
  print(res);

  
}