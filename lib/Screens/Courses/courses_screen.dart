import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Courses/components/body.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}