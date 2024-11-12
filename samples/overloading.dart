// 宣告新的資料型別:
typedef ManyOperation(int no1, int no2);
void main(){
  // 函式重載 overloading:
  add(int no1, int no2)=>print(no1+no2);
  sub(int no1, int no2)=>print(no1-no2);
  div(int no1, int no2)=>print(no1/no2);

  ManyOperation operfunc; // 宣告 operfunc變數為 ManyOperation型別

  operfunc=add;
  operfunc(7,23); // 30
  operfunc=sub;
  operfunc(11,3); // 8
  operfunc=div;
  operfunc(8,2);  // 4.0


}