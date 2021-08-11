import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test{
  final String testName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageUrl;

  Test({
    required this.testName,
    this.description = '',
    this.backgroundColor = Colors.orange,
    required this.questions,
    this.icon = FontAwesomeIcons.question,
    required this.imageUrl,
  });
}