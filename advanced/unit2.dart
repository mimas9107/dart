// 一般定義的函數:
int sum(int a, int b) {
  return a + b;
}

String printString(String s){
  if(s=="1"){
    print("Hello");
  }else if(s=="2"){
    print("Bye");
  }
  else{
    print("invalid");
  }
  return "Hi "+s;
}

List<int> addList(List<int> a){
  List<int> b=[];
  
  for(int i=0; i<a.length; i++){
    b.add(a[i]+1);
  }
  return b;
}

List<int> addList2(int a){
  
  return List<int>.generate(a, (index)=>index+1);
}

void main() {
// chapter 2.

  String str1 = "world";
  print(str1);

  int a = 1, b = 2;
  int res = sum(a, b);

  print("a=${a}, b=${b}; sum(a,b)=${res}");

  
  
  printString(str1);

  String str_res = printString("'123 321'");
  print("str_res=${str_res}");

  List<dynamic> lres=[];
  lres=addList([1,3,5,7]);

  print(lres);

// Generate() 匿名函數用法: 
  
  List<String> l3 = List<String>.generate(5, (index){
    index+=1;
    return "value = ${index}";});
  print(l3);
  
}
