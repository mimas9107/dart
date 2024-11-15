void main(){
  // 語法閉包:
  Function makeAdder(int addby){
    return (int i){
      print("function is made by makeAdder");
      return addby+i;
    };
  }

  var adder1 = makeAdder(10); // adder1會被賦予上面函數回傳的 (int i){...}
  print(adder1(8));           // 理解: 可以重新塑造一個函數賦予另一個別名去呼叫.
}