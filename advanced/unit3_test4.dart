void main(){

  void doTask(String task, Function(String) callback){
    print("開始執行 $task");
    callback("$task 完成!"); // 執行回呼函數, 參數設定在: Function(參數)
  }

  void onComplete(String result){
    print("Recieved : $result");
  }
  
  doTask("讀檔案!", onComplete);
  
}