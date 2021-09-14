import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/components/test_starting_page_body.dart';

class TestStartingPage extends StatefulWidget {
  final Test startingTest;
  const TestStartingPage({ Key? key, required this.startingTest }) : super(key: key);

  @override
  _TestStartingPageState createState() => _TestStartingPageState();
}

class _TestStartingPageState extends State<TestStartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(test: widget.startingTest),
    );
  }
}