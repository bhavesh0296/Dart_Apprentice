enum Role { athlete, bandMember, studentUnion }

class Person {}

class Student extends Person {
  Student(this.roles);
  List<Role> roles;
}

void main() {
  final bhavesh = Student([Role.athlete, Role.bandMember]);
  final nitesh = Student([Role.studentUnion]);
}
