import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/body.dart';

class QuizWithQuestionsScreen extends StatelessWidget {
  final Test test;
  const QuizWithQuestionsScreen({Key? key, required this.test})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          extendBodyBehindAppBar:
              true, // User does not supposed to back. Handle later.
          /*    appBar: AppBar(
        automaticallyImplyLeading: false,           // Removes Back Button
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
        TextButton(onPressed: () {}, child: Text("GEÇ", style: TextStyle(color: Colors.white),),),
        ],
      ),*/
          body: Body(test: test),
        ));
  }
}
