/// classes help represent real world data in code form
/// for example, if you want to represent a person of age 24 and height 156 cm:
class HardCodedPerson {
  // you can declare variables within person
  int age = 24;
  double height = 156.7;
}

void main() {
  // creating an instance of a classes is easy
  // its like creating a new variable
  // type name = value
  HardCodedPerson instanceOfHardCodedPerson = HardCodedPerson();
  print(instanceOfHardCodedPerson.height); // *24

  // you can also update the data of this specific instance
  // it will not affect the data of a seperate instance of HardCodedPerson
  HardCodedPerson instanceOfHardCodedPersonTwo =
      HardCodedPerson(); // completely different instance
  instanceOfHardCodedPerson.height = 48;
  print(instanceOfHardCodedPerson.height); // *48
  print(instanceOfHardCodedPersonTwo.height); // *24
}

// what if you want to some of the values unchangeable?
class NotSoHardCodedPerson {
  /// [final] makes a variable unchangeable
  final String species = 'human';

  int age = 24;
  double height = 156.7;
}

void mainTwo() {
  NotSoHardCodedPerson instanceOfNotSoHardCodedPerson = NotSoHardCodedPerson();

  // the following line does not work as species is final and cannot be changed
  instanceOfNotSoHardCodedPerson.species = 'a';
}

// what if you want to initialise a class with custom default values?
class NormalPerson {
  final String species = 'human';
  int age;
  double height;
  String name;

  // this is a function known as a class constructor (must be the same name as class)
  /// [this] is required so the compiler knows that you're referring to the class variables
  NormalPerson(this.age, this.height, this.name);
}

void mainThree() {
  NormalPerson instanceOfNormalPerson = NormalPerson(20, 190, 'bob');
  print(instanceOfNormalPerson.name); // *bob
}

// just like in functions, class constructors can have named parameters and preset values
class NormalPersonButBetter {
  final String species = 'human';
  int age;
  double height;
  String name;

  NormalPersonButBetter(this.age, {required this.height, this.name = 'bob'});
}

void mainFour() {
  NormalPersonButBetter instanceOfNormalPersonBB = NormalPersonButBetter(29,
      height: 156); // height is a named parameter and is also required

  // name is a named parameter that is also optional because it is not required
  print(instanceOfNormalPersonBB.name); // *bob
}
