import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Question/components/body.dart';
import 'package:flutter_quiz_app/Screens/Question/components/test.dart';
import 'package:flutter_quiz_app/data/test.dart';


class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(test: tests[1]),     // Should be handled soon. Give the users tests.
    );
  }
}
