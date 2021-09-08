import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Widgets/courses_widget.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/data/courses.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

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

    if (users != null) {
      for (var doc in users.docs) {
        if (doc.id == _auth.getUserUidFromAuthService()) {
          userGradeFromDatabase = doc.get("grade");
          userNameFromDatabase = doc.get("username");
          userPointsFromDatabase = doc.get("points");
        }
      }
    }

    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            elevation: 0,
            title: Text(userGradeFromDatabase.toString() + ". Sınıf Oyunları"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //SizedBox(width: 10),
                      /*   CircleAvatar(
                        radius: size.height * 0.035,
                        // backgroundImage: NetworkImage(user!.photoURL!),
                      ),
                    */
                      Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.centerLeft,
                        child: buildWelcome(userNameFromDatabase
                            .toString()), // user.userName should be.
                      ),
                    ],
                  ),
                  buildUserXP(userPointsFromDatabase),
                ],
              ),
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
              TextButton(
                child: Text(
                  "Çıkış Yap",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  await _auth.signOut();
                },
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
        ));
  }
}

buildCategories() => Container(
      height: 520, // Must be arranged according to Size parameter. !!
      child: GridView.count(
        physics: BouncingScrollPhysics(), // To bounce back from edge.
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        children: courses
            .map((course) => CoursesWidget(course: course))
            .toList(), // instead of courses, user.courses !!
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
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

buildUserXP(int userPointsFromDatabase) => Container(
      padding: EdgeInsets.all(16),
      child: Column(
        // There must be user later handle it.

        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Text(
            userPointsFromDatabase.toString(), //user.points

            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "XP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
