import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/ScoreScreen/score_screen_body.dart';
import 'package:flutter_quiz_app/Services/database.dart';
import 'package:provider/provider.dart';

class ScoreScreen extends StatelessWidget {
  final Test test;
  const ScoreScreen({ Key? key, required this.test }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot?>.value(
      initialData: null,
      value: DatabaseService(uid: ' ').users,
      child: Scaffold(
        body: ScoreScreenBody(test: test,),
      ),
    );
  }
}