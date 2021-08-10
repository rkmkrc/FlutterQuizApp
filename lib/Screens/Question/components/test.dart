import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Question/components/question.dart';


class Test {
  final int grade;
  final String testName;
  final Color backgroundColor;
  //final IconData icon;
  final List<Question> questions;
  final String iconUrl;

  Test({
    required this.grade,
    required this.questions,
    required this.testName,
    this.backgroundColor = Colors.orange,
    required this.iconUrl,
    //this.icon = FontAwesomeIcons.question,
  });
}
