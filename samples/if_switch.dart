void main(List<String> argv){
  // if / else / else if
  int n1=-2;
  if(n1>0){
    print("n1:${n1} is > 0");
  }else{
    print("n1:${n1} is < 0");
  }

  bool rain = false;
  if(rain){
    print("帶傘");
  }else{
    print("不帶傘");
  }
  // 也可用之前的條件運算： (條件式)? true的敘述: false的敘述 來改寫
  (rain)? print("帶傘"): print("不帶傘");

  /* nested if 巢狀if
  if(){
    if(){
      if(){
        if(){
          if(){
            if(){
            }
          }
        } 
      }
    }else{
      if(){

      }
    }
  }
  */
  int possibility = 65;
  if(rain){
    print("帶傘");
  }else{
    if(possibility >= 50){
      print("降雨機率 >=50% 帶傘");
    }else{
      print("不帶傘");
    }
  }
  // 巢狀也可以寫 條件運算:
  (rain)? print("帶"): ((possibility>=50))?print(" possibility>=50: 帶"):print("不帶");

  /* 多條件選擇: 有優先權順序
  if(condition1){
    (order1)
  }else if(condition2){
    (order2)
  }else if(condition3){
    (order3)
  }else{
    (lowest)
  }
  */

  String market="全聯";
  if(market=="全聯"){
    print("Go 全聯");
  }else if(market=="家樂福"){
    print("Go 家樂福");
  }else if(market=="愛買"){
    print("Go 愛買");
  }else{
    print("Go 菜市場");
  }

  /* switch(condition variable){
      case variable1:
          action1;
      break;
      case variable2:
          action2;
      break;
      ...

      default:
          default action;
     }
  */
  String grade="-";
  switch(grade){
    case "A":
      print("excellent");
      break;
    case "B":
      print("ok");
      break;
    case "C":
      print("cheer up");
      break;
    case "D":
      print("NG");
      break;
    default:
      print("poor guy");

  }
  // 標籤 + continue
  String order="紅茶";
  switch(order){
    case "紅茶":
      continue add; // 這樣就可以跳轉到 add標籤繼續執行; 點紅茶都會有珍珠 @_@
    case "綠茶":
       print("price: \$25");
       break;
    case "珍珠奶茶":
    case "椰果奶茶":
       print("price: \$55");
       break;
    add:
    case "珍珠":
       print("紅茶+珍珠");
       break;
    default:
       print("沒點餐");

  }



}