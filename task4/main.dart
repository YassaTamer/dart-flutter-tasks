void main() {

  Developer developer = Developer(
    "Ahmed",
    25,
    8000,
  );

  print("University: ${Person.universityName}");

  developer.showInfo();

  developer.programming();

  developer.communication();

}


class Person {

  String name;

  int _age;

  static String universityName = "Sohag University";

  Person(this.name, this._age);

  int get age {

    return _age;

  }

  set age(int value) {

    _age = value;

  }

}


class Employee extends Person {

  double salary;

  Employee(
    String name,
    int age,
    this.salary,
  ) : super(name, age);

  void showInfo() {

    print("Name: $name");

    print("Age: $age");

    print("Salary: $salary");

  }

}


abstract class Skills {

  void programming();

  void communication();

}


class Developer extends Employee implements Skills {

  Developer(
    String name,
    int age,
    double salary,
  ) : super(name, age, salary);

  @override
  void programming() {

    print("Programming skill: Dart developer");

  }

  @override
  void communication() {

    print("Communication skill: Good team communication");

  }

}