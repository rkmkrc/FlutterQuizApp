import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Screens/Courses/components/body.dart';
import 'package:flutter_quiz_app/Screens/Widgets/tests_widget.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/data/mathTests.dart';
import 'package:flutter_quiz_app/data/scienceTests.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  final Course course;
  const Body({Key? key, required this.course}) : super(key: key);
  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
   final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final users = Provider.of<QuerySnapshot?>(context);

    int userGradeFromDatabase = 2;
    String userNameFromDatabase = "";
    int userPointsFromDatabase = 0;
    
    if(users != null){
      for (var doc in users.docs) {
      if (doc.id == _auth.getUserUidFromAuthService()) {
        userGradeFromDatabase = doc.get("grade");
        userNameFromDatabase = doc.get("username");
        userPointsFromDatabase = doc.get("points");
      }
    }
    }
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          title: Text("$userGradeFromDatabase. Sınıf " + widget.course.courseName + " Oyunları"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome(userNameFromDatabase),
            ), // user.userName should be.
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  widget.course.leftOfAppBarColorForCourse,
                  widget.course.rightOfAppBarColorForCourse
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            SizedBox(
              height: 0,
            ),
            buildTestsCategory(size, widget.course),
          ],
        ),
      );
  }
}

buildTestsCategory(Size size, Course course) => Container(
      height: size.height * 0.78, // Must be arranged according to Size parameter. !!
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: course.testList.map((test) => TestsWidget(test: test)).toList(),    // !!!!!!!
      ),
    );
