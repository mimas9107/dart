import 'dart:convert';
void main(List<String> args){
  print("args: $args");
  
  print("args count: ${args.length}");
  for(int i=0; i<args.length; i++){
    print(args[i]);
  }

  // 字串形式的串列 => List: jsonDecode() 要 import 'dart:convert';
  print(jsonDecode(args[0]));
  print(jsonDecode(args[0])[3]);
}