import 'dart:io';

void main() async {
  Directory current = Directory.current; // 為避免開檔案相對路徑問題, 我找這個 物件來獲取當前位於資料夾,
  print(current);
  try{
  var file = File('./asynctest.txt');

  var content = await file.readAsString(); // 會花時間等待的動作 function
  print("content: $content");
  }on PathNotFoundException catch(e){
    print("No file");
  }
}