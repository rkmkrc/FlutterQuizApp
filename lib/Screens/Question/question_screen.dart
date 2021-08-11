import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Question/components/body.dart';

class QuestionScreen extends StatelessWidget {
  final Test test;
  const QuestionScreen({ Key? key, required this.test }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(test: test),
    );
  }
}