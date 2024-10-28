void main(){
  int a=22,b=33;
  var hello = (int a, int b){ print(a+b);return a+b; };
  print(hello(a,b));

  // 匿名函數:
  Function func_a = (int a,int b){ return a+b;};
  Function func_b = (int a,int b){ return a*b;};


  int func_c(Function func, int c, int d){
    return func(c,d);
  }

  print(func_c(func_a,33,44));
  print(func_c(func_b,22,66));

  // ==============================

  int aa=1;
  int blind(aa){ return aa;}

  print(blind(aa));
  
  // ==============================
  Function namedFunction(){
    return (){print("hellohello"); return 1;};
  }
  print(namedFunction()());
  // print((){[];print("hellohello");});


  // ============================= for each
  final flowercolor={'roses':'red', 'lily':'white'};
  flowercolor.forEach((key,value){
    print("key: $key");
    print("value: $value");
  });
  
  // =============================
  //  


}