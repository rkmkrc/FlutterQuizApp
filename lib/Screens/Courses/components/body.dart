import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Widgets/courses_widget.dart';
import 'package:flutter_quiz_app/data/courses.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          title: Text("7. Sınıf Oyunları"),
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
                colors: [Colors.deepPurple, Colors.deepOrange],
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
              width: 12,
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
            buildCategories(),
          ],
        ),
      );
}

buildCategories() => Container(
 
      height: 480,                                        // Must be arranged according to Size parameter. !!
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        children:
            courses.map((course) => CoursesWidget(course: course)).toList(),    // instead of courses, user.courses !!
      ),
    );

buildWelcome(String userName) => Column(
      // There must be user.userName later handle it.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Merhaba",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          userName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
