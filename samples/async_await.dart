Future fetchData() async{
    print("function start...");
    await Future.delayed(Duration(seconds: 5),()=>print(" fetchData getting data..."));
    print("function end");
    return 'data load complete'; 
  }


void main(){
  // 表示非同步事件的另一種表示: async... await
  // async - 非同步
  // await - 用來等待結果
  // async await : 是函式, 回傳值:Future
  print("main start...");


  
  // fetchData();
  fetchData().then((res)=>print("fetchData res= $res"));



  print("main end");


}