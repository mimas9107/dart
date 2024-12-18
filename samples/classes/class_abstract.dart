//抽象類別修飾字 abstract
abstract class Gfg{
  void say();  //抽象類別中的成員函式僅有宣告, 沒有函式主體, 
  void write();
}

//繼承抽象類別 Gfg的子類別 Geeksforgeeks
class Geeksforgeeks extends Gfg{
  // 這之中的成員方法就要實作函式主體,
  @override
  void say(){
    print("[class Geeksforgeeks] implement say()");
  }
  @override
  void write(){
    print("[class Geeksforgeeks] implement write()");
  }
}


void main(){
  var g1=Geeksforgeeks();
  g1.say();
  g1.write();
}