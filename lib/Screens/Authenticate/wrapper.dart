import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/userclass.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/authenticate.dart';
import 'package:flutter_quiz_app/Screens/Courses/courses_screen.dart';
import 'package:flutter_quiz_app/Screens/Home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final user = Provider.of<UserClass>(context);
              print(user);
              if (snapshot.hasData) {
                return CoursesScreen();
              } else {
                return Authenticate();
              }
            }),
      );
}
