class Animal{
  String name;
  Animal(this.name);
  void speak(){
    print("$name: speak:");

  }

  void bark(){
    print("動物叫聲: ");
  }
}

class Dog extends Animal{
  Dog(String name): super(name);
  
  @override 
  void bark(){
    print('wo wo wo');
  }
}

class Cat extends Animal{
  Cat(String name): super(name);
  
  @override
  void bark(){
    print('meow meow');
  }
}

void main(){
  var dog1=Dog('小黑');
  dog1.speak();
  dog1.bark();

  var cat1=Cat('小白');
  cat1.speak();
  cat1.bark();
}