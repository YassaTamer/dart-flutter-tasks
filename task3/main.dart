void main() {
  Set<String> students = {"Ahmed", "Ali"};

  addStudent(students, "Yassa");

  print("Students using forEach:");

  students.forEach((student) {
    print(student);
  });

  print("\nStudents using Recursion:");

  printStudents(students.toList(), 0);

  Set<String> newStudents = {"Youssef", "Sara"};

  Set<String> mergedStudents = {...students, ...newStudents};

  print("\nMerged Students:");

  print(mergedStudents);

  Map<String, List<int>> studentCourses = {};

  addCourse(studentCourses, "Ahmed", "Math", 90);

  addCourse(studentCourses, "Ahmed", "Dart", 80);

  addCourse(studentCourses, "Ali", "English", 70);

  print("\nAverage Grades:");

  studentCourses.forEach((student, grades) {
    double avg = averageGrade(grades);

    print("$student : ${avg.toStringAsFixed(2)}");
  });
}

void addStudent(Set<String> students, String name) {
  students.add(name);
}

void printStudents(List<String> students, int index) {
  if (index >= students.length) {
    return;
  }

  print(students[index]);

  printStudents(students, index + 1);
}

void addCourse(
  Map<String, List<int>> studentCourses,
  String studentName,
  String courseName, [
  int grade = 0,
]) {
  if (!studentCourses.containsKey(studentName)) {
    studentCourses[studentName] = [];
  }

  studentCourses[studentName]!.add(grade);
}

double averageGrade(List<int> grades) {
  int sum = grades.reduce((a, b) => a + b);

  return sum / grades.length;
}
