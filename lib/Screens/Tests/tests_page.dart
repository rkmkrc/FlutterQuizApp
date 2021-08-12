import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Screens/Tests/components/body.dart';

class TestsScreen extends StatelessWidget {
  final Course course;

  const TestsScreen({ Key? key,required this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(course: course),
    );
  }
}