import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';

class Course{
  final String courseName;
  final IconData courseIcon;
  final String imageUrl;
  final List<Test> testList;
  final Color backgroundColor;
  
  Course({
    required this.courseName,
    required this.courseIcon,
    required this.imageUrl,
    required this.testList,
    required this.backgroundColor,
  });
}