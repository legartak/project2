execute5() {
    // 5) Використання міксинів 
    print('\n5)');
    Cat murko = Cat();
    Human bob = Human();
    print('Cat will walk:');
    murko.walk();
    print('Human will walk');
    bob.walk();
}

class Cat with Walker{
}

class Human with Walker{
}

mixin Walker {
  void walk() {
    print('Hey, I am walking!');
  }
}