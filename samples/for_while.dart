void main(List<String> argv){
  /* for loop
  for(條件判定變數初始值; 條件; 改變條件判定變數) {
    條件成立的執行
  }
  */
  var n=5;
  int factorial=1;
  // factorial n! 
  for(int i=n; i>=1; i--){
    print("$factorial * $i = ${factorial*i}");
    factorial *= i;
  }
  print("${n}!=${factorial}");

  // for loop => 可以這樣寫 fabinaci series.
  for(int i=0,j=1,temp=0; j<30; temp=i, i=j, j=temp+i){
    print("i=$i, j=$j");
  }
  // for-in loop:
  List<int> L1=[1,2,3,4];
  for(int i in L1){
    print("element: $i");
  }
  
  List L2=[5,4,3,2];
  for(var i in L2){
    print("element: $i");
  }

  var factorial2=1;
  var j=n;
  while(j>=1){
    factorial2*=j;
    j--;
  }
  print("$n!=$factorial2");

  // do while
  var k=n;
  factorial=1;
  do{
    factorial*=k;
    k--;
  }while(k>=1);
  print("$n!=$factorial");
}