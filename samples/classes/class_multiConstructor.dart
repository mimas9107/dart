class Person{
  String name;
  int age;

  // default general constructor:
  Person(this.name, this.age);

  // 第2個建構函數: 運用初始化列表 initialized list方式定義成員 age,
  Person.underage(this.name): age=18;

  Person.anonymous(): age=30, name="guest";

  

}



void main(){
  var Mike=Person("Mike",44);

  var joe=Person.underage("joe");

  print("Name= ${Mike.name}, age= ${Mike.age}");

  print("Name= ${joe.name}, age= ${joe.age}");




}