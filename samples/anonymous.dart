void main(){

  // 匿名函式: 
  // arrow function
  tester(){
    print("i'm william");
  }
  testerarrow()=>print("i'm arrow william");

  // 函式作為參數傳遞
  void execute(var func){
    func();
  }
  execute(tester);

  // 匿名函數
  // void execute_anonymous(()=>print("hi")){
  // }

  // closure:會影響函式中的值
  int x=10;
  Function closurefunc=(){
    print("obtain now x= ${x}");
  };
  closurefunc();

  x=31;
  closurefunc();

  // closure+函式做為回傳:
  Function makeAdder(int addby){
    return (int i)=>addby+i;
  }
  var add2=makeAdder(2); // 實際上: add2(int i)=>2+i;
  var add4=makeAdder(4); // 實際上: add4(int i)=>4+i;

  print(add2(9)); // 9+2
  print(add4(9)); // 9+4

  // anonymous
  ()=> "hello";                //<= 這樣要怎麼執行, 用括號先括住匿名函式, 然後後面再接 ()就可呼叫:
  print((()=>"hihi")());       // 直接回傳 "hihi" 給外層 print()去接印出.
  print( ((a,b)=>a+b)(11,17)); // 也可以用有參數的 匿名函式, 
}