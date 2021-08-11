import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/Screens/Login/login_screen.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/social_icons.dart';
import 'package:flutter_quiz_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/data/courses.dart';
import 'package:flutter_quiz_app/data/tests.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              child: buildWelcome("Erkam"),),           // user.userName should be.
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepOrange ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          actions: [
            Icon(Icons.search, color: Colors.black54,),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(height: 8,),
            buildCategories(),
          ],
        ),
      );
}

buildCategories() => Container(
  height: 370,
  child: GridView.count(
    crossAxisCount: 2,
    children: [
      SocialIcon(iconSrc: "assets/icons/twitter.svg", press: (){}),
      SocialIcon(iconSrc: "assets/icons/twitter.svg", press: (){}),     // Map will be used.
      SocialIcon(iconSrc: "assets/icons/twitter.svg", press: (){}),
      SocialIcon(iconSrc: "assets/icons/twitter.svg", press: (){}),
      ],
    )
    
);


buildWelcome(String userName) => Column(                // There must be user.userName later handle it.
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
