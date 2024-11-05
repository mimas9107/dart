bool topVal = true; // 全域變數, 此檔案執行期間, 變數都存在.

void main(){
  var local_Val = true;
  
  void fun(){
    var fun_Val = true;

    void insidefun(){
      var inside_Val = true;
      print("topVal= $topVal");
      print("local_Val= $local_Val");
      print("fun_Val= $fun_Val");
      print("inside_Val= $inside_Val");

    }
    insidefun();
  }
  fun();
}