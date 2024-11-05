import 'dart:io';
void main(){
  stdout.write(" Pick a number: \n");
  var num_a = stdin.readLineSync();
  var num_b = stdin.readLineSync();

  int luckynum=9;

  if(int.tryParse(num_a!) == null || int.tryParse(num_b!) == null){
    print("你不是輸入數字");
    return;
  }else{
    if(int.parse(num_a!) >0 && int.parse(num_b!) >0 ){
      print("兩數是正數");
    }else{
      if(int.parse(num_a!) <0 && int.parse(num_b!) <0 ){
        print("兩數是負數");
      }else{
        print("數字是相反符號");
      }
    }
    if(int.parse(num_a!) == luckynum || int.parse(num_b!) == luckynum)
       print("you also guessed my lucky number!");
    else
       print("I have a secret number in mind");
      
  }
}
