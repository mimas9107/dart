typedef kitchenmake(String recipe);
void main(){
  print(" ==== 早餐店 ====");
  
  burger(String recipe)=>print("$recipe 漢堡製作中... \n\n\n$recipe 漢堡完成!\n\n");
  sandwich(String recipe)=>print("$recipe 三明治製作中... \n\n\n$recipe 三明治完成~\n\n");
  pancake(String recipe)=>print("$recipe 蛋餅製作中... \n\n\n$recipe 蛋餅完成*\n\n");
  pasta(String recipe)=>print("$recipe 義大利麵製作中... \n\n\n$recipe 義大利麵完成*\n\n");
  drink(String recipe)=>print("$recipe 製作中... \n\n\n$recipe 完成*\n\n");

  kitchenmake order;
  order=burger;
  order("牛肉");
  order=sandwich;
  order("豬肉蛋");
  order=pancake;
  order("玉米");
  order=pasta;
  order("青醬");

  RecieveOrder(String recipe, kitchenmake what){
    what(recipe);
  }
  RecieveOrder("火腿蛋", sandwich);
  RecieveOrder("蒜香蛤蠣", pasta);
  RecieveOrder("大冰奶",drink);

}