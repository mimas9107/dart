import 'dart:math';

// 購物車資料流
Stream<Map> cartStream(Map<String,int> products, int maxItems) async*{
  // 計算購買品項:
  int itemCount=0;

  // 小於maxItems就不斷購物,
  while(itemCount<maxItems){
    
    //隨機挑選商品: 取得對應 品名、價格
    
    int index=Random().nextInt(products.keys.length);
    String chosen_product=products.keys.toList()[index];
    int chosen_price=products.values.toList()[index];

    //思考選購, 會花時間的地方:

    await Future.delayed(Duration(seconds: 5)); 

    int amount = Random().nextInt(3)+1; //隨機產生數量, 最多4個
    
    itemCount++;
    print("商品 $chosen_product * $amount 放到購物車中...");
    yield {"name": chosen_product, "price": chosen_price, "amount": amount};

  }
}

// 請支援收銀:
Future<int> calculateTotal(List<Map> cart) async{
  print("開始結帳...");
  int totalPrice=0;

  for(Map item in cart){
    await Future.delayed(Duration(seconds: item["amount"]));
    totalPrice+=(item["price"]*item["amount"]) as int;

    print("當前商品\n\t名稱: ${item["name"]},\n\t單價: ${item["price"]},\n\t數量: ${item["amount"]}");

  }
  print("結帳完成");
  return totalPrice;
}


void main() async {
  Map<String, int> products={
    "Monitor":3000,
    "Keyboard":1000,
    "Mouse":500,
    "Speaker":2000,
    "Joystick":2500,
    "Cpu": 7000,
    "Mainboard": 5000,
    "Ram": 4000,
    "Ssd":3000,
    "Videocard":10000,
    "Usbhub":3000,
    "router":6000,
  };
  // 購物過程:
  var cart = cartStream(products, 6);
  // 結帳過程:
  List<Map> allItems=await cart.toList();
  int total= await calculateTotal(allItems);

  print("總金額: \$$total");


}