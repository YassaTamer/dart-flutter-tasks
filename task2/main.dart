import 'dart:io';

void main() {
  List<String> studentNames = [];
  List<List<double>> studentGrades = [];

  print("Enter number of students:");

  int studentsCount = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < studentsCount; i++) {
    print("\nEnter student name:");

    String name = stdin.readLineSync()!;

    studentNames.add(name);

    print("Enter number of subjects:");

    int subjectsCount = int.parse(stdin.readLineSync()!);

    List<double> grades = [];

    for (int j = 0; j < subjectsCount; j++) {
      print("Enter grade ${j + 1}:");

      double grade = double.parse(stdin.readLineSync()!);

      grades.add(grade);
    }

    studentGrades.add(grades);
  }

  while (true) {
    print("                     ");
    print("\n===== MENU =====");
    print("1. Show All Results");
    print("2. Search Student");
    print("3. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      for (int i = 0; i < studentNames.length; i++) {
        double average =
            studentGrades[i].reduce((a, b) => a + b) / studentGrades[i].length;

        String gradeLetter;

        if (average >= 85) {
          gradeLetter = "A";
        } else if (average >= 70) {
          gradeLetter = "B";
        } else if (average >= 50) {
          gradeLetter = "C";
        } else {
          gradeLetter = "F";
        }

        print("\nName: ${studentNames[i].toUpperCase()}");
        print("Average: ${average.toStringAsFixed(2)}");
        print("Grade: $gradeLetter");
      }
    }
    else if (choice == 2) {
      print("Enter student name:");

      String searchName = stdin.readLineSync()!;

      int index = studentNames.indexOf(searchName);

      if (index != -1) {
        double average =
            studentGrades[index].reduce((a, b) => a + b) /
            studentGrades[index].length;

        print("\nStudent Found");
        print("Average: ${average.round()}");
      } else {
        print("Student not found");
      }
    }

    else if (choice == 3) {
      print("Program Ended");
      break;
    }

    else {
      print("Invalid Choice");
    }
  }
}
