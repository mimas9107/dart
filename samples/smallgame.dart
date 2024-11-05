import 'dart:io';
void main(){

  print("""        你在二維世界的一座荒島上。
        努力生存直到救援到來。
        可用命令以大寫字母顯示。
        該程式存在任何其他命令。
        首先環顧四周...""");

  print("要往哪裡爬? LEFT/RIGHT");
  String? dir = stdin.readLineSync();
  
  if(dir=="RIGHT"){
    print("😵‍💫");
    return;
  }
  print("要吃哪個? CRAB/STARFISH");
  String? eatwhat = stdin.readLineSync();
  
  if(eatwhat == "STARFISH"){ print("😵‍💫"); return;}

  print("要吃生的? YES/NO");
  String? eatraw = stdin.readLineSync();
  if(eatraw == "NO"){ print("😵‍💫"); return;}

  print("看到一個樹");
  print("要喝椰子水嗎? YES/NO");
  String? drink = stdin.readLineSync();
  if(drink == "YES"){
     print("😵‍💫");
     return;
  }else{
     print("🙂🙂");
  }
}