class rectangle{
  int rec_length;
  int rec_width;
  rectangle(this.rec_length, this.rec_width);
}
// 在不改變原始類別下, 對原類別擴充功能
extension AreaCal on rectangle{
  int getArea(){
    return this.rec_length*this.rec_width;
  }
}


void main(){

  rectangle r1=rectangle(10, 20);
  
  print("長: ${r1.rec_length}, 寬: ${r1.rec_width}");

  print("面積: ${r1.getArea()}");
  

}