import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Screens/Courses/components/body.dart';
import 'package:flutter_quiz_app/Screens/Widgets/tests_widget.dart';
import 'package:flutter_quiz_app/data/mathTests.dart';

class Body extends StatelessWidget {
  final Course course;
  const Body({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          title: Text("7. Sınıf " + course.courseName + " Oyunları"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome("Erkam"),
            ), // user.userName should be.
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  course.leftOfAppBarColorForCourse,
                  course.rightOfAppBarColorForCourse
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
            buildTestsCategory(),
          ],
        ),
      );
}

buildTestsCategory() => Container(
      height: 480, // Must be arranged according to Size parameter. !!
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: mathTests.map((test) => TestsWidget(test: test)).toList(),
      ),
    );
