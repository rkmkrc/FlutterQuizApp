import 'package:flutter_quiz_app/Classes/course.dart';

class Grade{
  final int whichGrade;
  final List<Course> coursesList;

  Grade({
    required this.whichGrade,
    required this.coursesList,
  });
}