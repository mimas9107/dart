/*-
題目#03：請撰寫一個 Dart 函數 generateAndFillSquares，此函數接收一個整數 n，
利用 List.generate 來產生一個長度為 n 的列表，其中每個元素是其索引的平方數，
接著使用 forEach 印出每個元素及其索引。
-*/

// 宣告function:
List<int> generateAndFillSquares(int n){
  List<int> res = List.generate(n,(index)=>(index)*(index));
  return res;
}

void main(){
  // 產生含有5個平方數 list變數 sqrlist:
  List<int> sqrlist = generateAndFillSquares(5);
  
  // 用來輸出 "index 0~n" 訊息:
  int j=0;
  // for-each方法遍歷各元素:
  sqrlist.forEach((i){print("Index $j: $i");j++;});
}