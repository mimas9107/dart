void main(){
String name1 = "Aqua Man"; 
String name2 = "Cat Woman";

// output         // 01 2345 67
//   Aqat Mman    // Aq ua M an
//   Cua Woan     // C at Wo man
//                // 0 12345 678
// 土法煉鋼:
print("****解一********");
var tmp1;
tmp1 = name1.substring(0,2) + name2.substring(1,3) + name1.substring(4,6) + name2.substring(6);
var tmp2;
tmp2= name2.substring(0,1) + name1.substring(2,4) + name2.substring(3,6) + name1.substring(6,8);

print("${name1} 轉換為 ${tmp1}");
print("${name2} 轉換為 ${tmp2}");

//==============================================================================================
// 窮舉法找規律:
print("****解二********"); 
List<String> m1 = name1.split(" ");
List<String> m2 = name2.split(" ");
// operator: ~/ get the integer part of divide result.
var ii = m1[0].substring(0, m1[0].length~/2 )+m2[0].substring(m2[0].length~/2);
var jj = m1[1].substring(0, m1[1].length~/2 )+m2[1].substring(m2[1].length~/2);
var kk = m2[0].substring(0, m2[0].length~/2 )+m1[0].substring(m1[0].length~/2);
var ll = m2[1].substring(0, m2[1].length~/2 )+m1[1].substring(m1[1].length~/2);
// combine:
print(ii+" "+jj);
print(kk+" "+ll);


//===========================================================================
//
// 用 loop及 容器method 解:
print("****解三********");
List<String> first_name=[],second_name=[];
for(int i=0; i<2; i++){
    
   first_name.add(m1[i].substring(0, m1[i].length~/2 )+m2[i].substring(m2[i].length~/2));
   second_name.add(m2[i].substring(0, m2[i].length~/2 )+m1[i].substring(m1[i].length~/2));
}
print(first_name.join(" "));
print(second_name.join(" "));


//===========================================================================
// 
print("****解四********");
List<List<String>> names=[name1.split(" "), name2.split(" ")];
List<List<String>> names2=[[],[]];

// (1) Data Partition:
for(int i=0; i<2; i++){ // N個人
  for(int j=0; j<2; j++){ // M組 :(姓=>拆2個 名=>拆2個)
    names2[i].add(names[i][j].substring(0,names[i][j].length~/2));
    names2[i].add(names[i][j].substring(names[i][j].length~/2));
  }
} // 兩層迴圈拆分成 N*(M*2)個資料
print(names2); // [['Aq', 'ua', 'M', 'an'],['C','at','Wo','man']]

// (2) re-construction algorithm:
String tmp="";
for(int c=0; c<4; c++){ 
  if(c%2==1){
    tmp=names2[0][c];
    names2[0][c] = names2[1][c];
    names2[1][c]=tmp;
  }
} // list1 與 list3互相交換 index為1,3元素
print(names2);  

// (3) conbine:
String s1="",s2="";
for(int i=0; i<4; i++){
  s1+=names2[0][i];
  s2+=names2[1][i];
  if(i==1){
    s1+=" ";
    s2+=" ";
  }
}
print(s1);
print(s2);



}