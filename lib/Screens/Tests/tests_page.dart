import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Screens/Tests/components/body.dart';
import 'package:flutter_quiz_app/Services/database.dart';
import 'package:provider/provider.dart';

class TestsScreen extends StatefulWidget {
  final Course course;

  const TestsScreen({ Key? key,required this.course }) : super(key: key);

  @override
  _TestsScreenState createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot?>.value(
      initialData: null,
      value: DatabaseService(uid: ' ').users,
      child: Scaffold(
        body: Body(course: widget.course),
      ),
    );
  }
}