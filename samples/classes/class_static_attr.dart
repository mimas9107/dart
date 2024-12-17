class Counter{
  static int count=0;
  int ct=0;
  Counter(){ count++;}

  void display(){
    ct++;
    print('counter: $count');
    print('display called times: $ct');
  }

}

void main(){
  var c1=Counter();
  c1.display();
  c1.display();
  
}