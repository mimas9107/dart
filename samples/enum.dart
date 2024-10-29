enum Year{
  Jan(1),
  Feb(2),
  Mar(3),
  Apr(4),
  May(5),
  Jun(6),
  Jul(7),
  Aug(8),
  Sep(9),
  Oct(10),
  Nov(11),
  Dec(12);
  final num value; 
  const Year(this.value);
}
void main(){
  print(Year.values);
  Year.values.forEach((e)=>print("${e} : ${e.index}"));
  print(Year.Jan.value);


  // final vs const
  final v1 = "hihi";
  const v2 = "hihi";

  //v1 = "hello"; // error v1已經被定義為 string常數.
  //v2 = "h"; // error v2 is const.

  final d = DateTime.now();
  // const dd = DateTime.now(); // error

  // const s1 = v1; // error, assign的 v1必須也是 const; final s1=v1 就沒關係.
  const s2 = v2; 


}

