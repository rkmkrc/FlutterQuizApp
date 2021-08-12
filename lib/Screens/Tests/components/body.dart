import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';

class Body extends StatelessWidget {
  final Course course;
  const Body({ Key? key, required this.course }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("TESTS PAGE"),
    );
  }
}