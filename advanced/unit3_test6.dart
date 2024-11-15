class Person{
  String ?name;
  int ?age;
  
  Person(String name, int age){
    this.name=name;
    this.age=age;
  }

  void sayhello(){
    print("hello!");
  }
}

class Employee extends Person{

  num ?salary;
  Employee(String name, int age, this.salary):super(name, age);

  Employee.setting(String name, int age, num salary):super(name,age){
    this.name = name;
    this.age = age;
    this.salary = salary;
  }

  void showmeinfo(){
    print("i'm ${this.name}, ${age} years old, my salary is ${this.salary}");
  }

  // 這裡覆寫了 parent class Person中的 sayhello成 Employee版本的 sayhello
  @override
  void sayhello() {
    // 這裡 this.name要加 !告訴 compiler, runtime時一定會有值才可以轉大寫!
    print("Hello! i'm HelloCompany's staff, ${this.name!.toUpperCase()}"); 
  }



}


void main(){

Employee emp1 = Employee('jackson', 30, 28000);
emp1.showmeinfo();
emp1.sayhello();


Employee emp2 = Employee.setting('Alice', 45, 32000);
emp2.salary = 34000;
emp2.showmeinfo();


}