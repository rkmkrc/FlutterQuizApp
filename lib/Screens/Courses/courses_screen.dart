import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Courses/components/body.dart';
import 'package:flutter_quiz_app/Services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot?>.value(
      initialData: null,
      value: DatabaseService(uid: ' ').users,
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}