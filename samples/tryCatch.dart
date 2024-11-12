void main(){
  try{
  int i=5;
  String s1 = 'hello';
  if(i<s1.length){
    print("hello[5]= ${s1[5]}"); 
  }else{
    throw Exception("out of range!");
  }
  // 會跑出 RangeError (index): Invalid value: Not in inclusive range 0..4: 5
  // 所以用 try catch 捕捉錯誤訊息, 讓此程序正常 end
  } 
  catch(e){
    print("error msg: $e");
 
  }
  
}