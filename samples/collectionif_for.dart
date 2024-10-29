void main(List<String> args){
  bool flag=true;
  // ==================== collection if ======================
  var L1=[1,2,3]; // L1=[1,2,3]
  if(flag){
    L1.add(5);    // if true: L1=[1,2,3,5]
  }
  print("L1: ${L1}");
   
  // 上面的初始化 collection變數的過程可用 if縮減如下, 
  var L2=[9,8,7, if(flag) '11'];   // if true: L2=[9,8,7,11] else: L2=[9,8,7]
  print("L2: ${L2}");

  // ==================== collection for =====================

  List L3 =['#0'];
  for(var i in L1){
    var value = '#$i';
    L3.add(value);
  }
  print("L3: ${L3}");

  // 上面的初始化 collection變數的過程可用 for縮減如下, 
  List L4=['#0', for(var i in L1) '#$i'];
  print("L4: ${L4}");

  // ================ List.reduce() 結合縮減功能應用 =================
  // SUM加總
  var sum=0;
  sum+=L1[0];
  sum+=L1[1];
  sum+=L1[2];
  sum+=L1[3];
  print("sum: ${sum}"); // 11
  
  var sum2=0;
  sum2 = L1.reduce( (e_sum, e_value)=> e_sum+e_value); // 11
  print("sum2: ${sum2}");
  
  // 字串串接
  List L_str = ['h','e','l','l','o'];
  String s1=L_str.reduce( (combine_result, char)=> combine_result + char );
  print("L_str: ${L_str}, reduce => s1: ${s1}");

  // ================ List.fold() =================
  // fold(initial_val, function)
  int initial_val=100;
  sum = L1.fold( initial_val, (sum, e_val)=> sum+e_val ); // 100+11
  print("L1: ${L1}, fold => sum: ${sum}");
  var res3 = L1.fold( initial_val, (x,y) => 2*x+y );
  print("res3: ${res3}");

  // ==================== numeric 比較 ========================
  print(99.compareTo(100)); // < 回傳 -1
  print(99.compareTo(99));  // = 回傳 0
  print(99.compareTo(9));   // > 回傳 1

  print((-0.0).compareTo(0.0)); // -1 ?不要這樣比較
  print(double.nan.compareTo(double.infinity)); // 1 ?
  
  // ==================== sort ================================
  var numbers=[13, 2, -11, 0];
  // (自己, 目標對象)=>自己.compareTo(目標) : 昇冪
  // (自己, 目標對象)=>目標.compareTo(自己) : 降冪
  numbers.sort( (current, target)=> current.compareTo(target) );
  print("numbers: ${numbers}"); // [-11, 0, 2, 13]
  
  numbers.sort( (current, target) => target.compareTo(current));
  print("numbers: ${numbers}");
  


}