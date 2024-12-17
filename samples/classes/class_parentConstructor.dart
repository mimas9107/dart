class Person{
  String name;

  Person(this.name);
}

class Student extends Person{
  // String name;
  int id;
  // super() 指向父類建構子
  Student(String name, this.id): super(name);
}


void main(){

  var stu=Student("Hu", 11);
  print("Student: ${stu.name}, ${stu.id}");
}