class Test{
  int? i;
  Function? fun;
  say(){
    if(i != null){
      print(i!*8); // 告知 compiler, !保證 i有值, 讓 compiler不會報錯
    }
    fun?.call(); // 函數避免為空, 若為空不執行call; 反之就執行它.
  }
}
void main(List<String> args){
  //int i; <= 這樣直接操作會 error. 所以要改下面這行, 加上 ?允許為空.
  int? i;
  print(i);

  String s1="I'm Justin";
  // casscade 級聯 (化簡重複的物件表示)
  var buf = s1..length
              ..split(" ");
  
  // 空判斷級聯 (null safety+ casscade)
  // ?..若前面 物件為空, 後面函式不執行.
  var buff = s1?..split(" ") 
                ..length;
  
  
}