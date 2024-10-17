void main(){
  // #08 Justin Liu
  String fruits="apple!banana!orange!grape";
  print("我有${fruits.split("!").length}個水果, 我有${fruits.replaceAll(RegExp(r'!'),",")}");
}