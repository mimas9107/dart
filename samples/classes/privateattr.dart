// 自定義一個函數庫
class Person2{
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