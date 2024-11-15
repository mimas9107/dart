/*exam #02 題目：
請使用generate語法創建一個包含1到10的平方數列表
範例輸出：
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]*/

void main(){
  List<int> L1 = List.generate(10, (index)=>(index+1)*(index+1));
  print(L1);

}