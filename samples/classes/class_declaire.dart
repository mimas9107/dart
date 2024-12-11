
class Rectangle{
  // 來個長方形的類別!
  
  // 來點屬性: 特徵,
  double rect_w; //寬
  double rect_l; //長

  // 建構子:
  Rectangle({required this.rect_w, required this.rect_l});
  
  // 來點方法: 功能,
  double area(){
    print(this);
    return (this.rect_w)*(this.rect_l);
  }
}

void main(){

  var myrect=Rectangle(rect_w: 5, rect_l: 7);

  print(" area=${myrect.area()}");


}