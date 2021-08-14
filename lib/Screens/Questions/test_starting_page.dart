import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/components/test_starting_page_body.dart';

class TestStartingPage extends StatelessWidget {
  final Test startingTest;
  const TestStartingPage({ Key? key, required this.startingTest }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(test: startingTest),
    );
  }
}