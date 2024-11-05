import 'dart:io';
void main(List<String> argv){
  // 終於進到標準輸入輸出了!!
  // 標準輸出: console
  // 標準輸入: keyboard
  // 要使用前要先引用 import 'dart:io'

  stdout.write("[stdout] hello world!\n\n[stdin]please input something>> ");
  var buf = stdin.readLineSync();
  stdout.write("hi ${buf} [ type= ${buf.runtimeType}]");

  stdout.write("\n[stdout] please input a number>> ");
  var num = stdin.readLineSync();
  stdout.write("Your no. is ${num} [ type= ${num.runtimeType}]");

  stdout.write("\n num will be convert to int from string: type=${int.parse(num!).runtimeType}"); // 將 輸入進來的 string 轉態為 int才能做運算


}