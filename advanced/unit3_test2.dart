// 全域函數:
void printElement(int element){
  print("你呼叫了 printElement()");
  print(element);
}
void main(){
  void printElement2(int element){
    print("你呼叫了 local的 printElement2()");
    print(element);
  }
  // 在 main()中 或是 其他 function()都可以存取到 printElement, 
  // printElement2只能在 main()中存取.

  var show = printElement; 
  // 上面這行, show參考到 printElement; show相當於是 printElement的別名.
  
  // 用這個別名呼叫這個函數:
  show(123);

  var show2 = printElement2;

  show2(456);

  // 宣告 perimeter函數會傳回函數.
  Function perimeter(){
    var pi=3.14;
    return (num radius)=>pi*radius*radius;
  }

  var per=perimeter(); // 回傳一個 function給 per接住,
  print(per);          // 這裡回傳一個 function但 print只是印出這個 func在記憶體存在的樣子 Closure

  var r=9;
  var l=per(r);
  print(l);


}