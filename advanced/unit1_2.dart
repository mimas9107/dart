void main(){

// for loop 操作
print("\n======== for loop操作"); // 長像根本是c/c++
int a=0;
int b=0;
for(int i=0; i<10; i++){
  
  print('${i}, a= ${a++}');
  
  print('${i}, b= ${++b}');


}

// 遍歷 String
String h="HelloWorld", spc=" ";
for(int i=0; i<h.length; i++){
  spc=" ";
  for(int j=i; j<h.length; j++){
     spc+=" ";
  }
  print(spc+h[i]);
}
// 遍歷 List 對當中的 string元素做動作
List<String> liststr=["abcd", "hfalkdjaf;","1943kja"];
for(int j=0; j<liststr.length; j++){
  print("${liststr[j]}有包含 a ? ${liststr[j].contains("a")}");
}



}