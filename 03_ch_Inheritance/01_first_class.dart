enum Grades { A, B, C, D, F }

class Person {
  String givenName;
  String suerName;
  String get fullName => '$givenName $suerName';

  Person(this.givenName, this.suerName);

  @override
  String toString() => fullName;
}

class Student {
  String givenName;
  String surName;
  var grades = <Grades>[];
  String get fullName => '$givenName $surName';

  Student(this.givenName, this.surName);

  @override
  String toString() => fullName;
}

class Stu extends Person {
  var grades = <Grades>[];

  Stu(super.givenName, super.suerName);

  @override
  String get fullName => '$suerName, $givenName';
}

class StudentBandMember extends Stu {
  StudentBandMember(super.givenName, super.suerName);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Stu {
  StudentAthlete(super.givenName, super.suerName);

  bool get isEligible => grades.every((grade) => grade != Grades.F);
}

void main() {
  final jon = Person('jon', 'Snow');
  final jane = Stu('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grades.B;
  jane.grades.add(historyGrade);

  final child = SomeChild();
  child.doSomeWork();

  final jessie = StudentBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('marty', 'Mcfly');

  final students = [jane, jessie, marty];
}

class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('Child doing some other work');
  }
}
