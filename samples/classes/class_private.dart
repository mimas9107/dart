import 'privateattr.dart';

class Person{
  late String _name; //私有屬性用底線 _ 加在變數前命名


  // 顯式的 getter function定義
  String get name{ //<== 可以觀察到沒有 (), 其操作模式: 函式執行方式轉換成屬性模式
    return _name.isEmpty?'No name':_name; // 檢查
  }
  // 顯式的 setter function定義
  void set name(String newname){
    _name=newname;
  }

}


void main(){
  var the_one = Person();
  the_one.name="person1";
  print(the_one._name); //<= 這裡用底線直接存取 Person類別中的私有屬性 _name, 是ok給過,

  var p2=Person2();
  p2.name="person2";
  //print(p2._name); //<= 這裡用底線去存取外部函數庫類別的私有屬性 _name會噴錯誤! 因此只能透過 getter去取.
  print(p2.name);
}