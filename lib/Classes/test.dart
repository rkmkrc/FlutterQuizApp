import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test{
  final String testName;
  final String parentCourseOfTest;
  final String description;
  final String testGrade;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageUrl;
  final Color leftOfTestButtonColorForTest;
  final Color rightOfTestButtonColorForTest;

  Test(  {
    required this.testName,
    required this.parentCourseOfTest,
    this.description = "Bu test üçgenler sorularından oluşmaktadır.",
    required this.testGrade,
    this.backgroundColor = Colors.orange,
    required this.questions,
    this.icon = FontAwesomeIcons.question,
    required this.imageUrl,
    required this.leftOfTestButtonColorForTest, 
    required this.rightOfTestButtonColorForTest,
    
  });
}