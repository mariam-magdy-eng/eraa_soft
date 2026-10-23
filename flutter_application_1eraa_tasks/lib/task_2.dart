class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print('Name: $name, Age: $age, Grade: $grade');
  }

  bool isPassed() {
    return grade >= 50;
  }
}

Student findTopStudent(List<Student> students) {
  if (students.isEmpty) {
    throw ArgumentError('The student list cannot be empty.');
  }

  Student topStudent = students[0];
  for (var student in students) {
    if (student.grade > topStudent.grade) {
      topStudent = student;
    }
  }
  return topStudent;
}

void main() {
  // 4. Create three student objects in main()
  Student student1 = Student('Alice', 20, 85.5);
  Student student2 = Student('Bob', 22, 42.0);
  Student student3 = Student('Charlie', 21, 91.0);

  List<Student> students = [student1, student2, student3];

  for (var student in students) {
    student.displayInfo();
    print('Passed: ${student.isPassed()}\n');
  }

  // Find and display the top student
  Student top = findTopStudent(students);
  print('Top Student: ${top.name} with a grade of ${top.grade}');
}
