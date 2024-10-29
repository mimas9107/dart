void main(){

  //1. records for a table

  List<Map> ranking =[{"name":"小明", "Jan":2, "Feb":1, "Mar":4}, 
                      {"name":"小美", "Jan":3, "Feb":2,"Mar":3}];
  // Header of table
  print("Rank\t${ranking[0].keys.toList()[1]}\t${ranking[0].keys.toList()[2]}\t${ranking[0].keys.toList()[3]}");
  for(var e in ranking){
    // iterate each record in the list:
    print("${e['name']}\t${e['Jan']}\t${e['Feb']}\t${e['Mar']}");
  }

  //2. 9宮格棋盤
  List<List<int>> board=[ [-1,0,1],
                          [ 0,1,0],
                          [-1,0,0] ];
  board.forEach( (e) => print(e));
  
  //3. Menu for resteraunt
  List<Map> menu=[{'菜名':'烤肉飯', '價格':100}, {'菜名':'雞排飯', '價格':100},{'菜名':'烤雞腿飯', '價格':110}];
  print("${menu[0].keys.toList()[0]}\t${menu[0].keys.toList()[1]}");
  for(var e in menu){
    print("${e['菜名']}\t${e['價格']}");
  }

}