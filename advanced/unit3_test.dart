void printHello(){
  print("helloworld!");
}

String writeHello(){
  return "123";
}

void main(){

  printHello();

  writeHello(); // 123到哪去了?

  String result=writeHello(); // 應該用一個變數去接住
  print("result=$result");
}