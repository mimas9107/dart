typedef kitchenmake(String recipe);
void main(){
  print(" ==== 早餐店 ====");
  
  // burger(String recipe)=>print("$recipe 漢堡製作中... \n\n\n$recipe 漢堡完成!\n\n");
  Future burger(String recipe) async{
    print("漢堡製作start");
    await Future.delayed(Duration(seconds:10), ()=>print("$recipe 漢堡製作中..."));
    print("漢堡製作end");
    return "漢堡完成!";
  }
  // sandwich(String recipe)=>print("$recipe 三明治製作中... \n\n\n$recipe 三明治完成~\n\n");
  Future sandwich(String recipe) async{
    print("三明治製作start");
    await Future.delayed(Duration(seconds:5), ()=>print("$recipe 三明治製作中..."));
    print("三明治製作end");
    return "三明治完成!";
  }
  // pancake(String recipe)=>print("$recipe 蛋餅製作中... \n\n\n$recipe 蛋餅完成*\n\n");
  // pasta(String recipe)=>print("$recipe 義大利麵製作中... \n\n\n$recipe 義大利麵完成*\n\n");
  Future pasta(String recipe) async{
    print("義大利麵製作start");
    await Future.delayed(Duration(seconds:15), ()=>print("$recipe 義大利麵製作中..."));
    print("義大利麵製作end");
    return "義大利麵完成!";
  }
  // drink(String recipe)=>print("$recipe 製作中... \n\n\n$recipe 完成*\n\n");

  kitchenmake order;
  order=burger;
  order("牛肉");
  // order=sandwich;
  // order("豬肉蛋");
  // order=pancake;
  // order("玉米");
  // order=pasta;
  // order("青醬");

  RecieveOrder(String recipe, kitchenmake what){
    what(recipe);
  }
  RecieveOrder("火腿蛋", sandwich);
  RecieveOrder("蒜香蛤蠣", pasta);
  // RecieveOrder("大冰奶",drink);

}