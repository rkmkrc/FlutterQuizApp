import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/data/mathTests.dart';
import 'package:flutter_quiz_app/data/scienceTests.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final courses = <Course>[
  Course(
    courseName: "Matematik",
    imageUrl: "assets/questions/testIcon.png",
    testList: mathTests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
    backgroundColor: Colors.blue,
    leftOfAppBarColorForCourse: Colors.indigo.shade900,
    rightOfAppBarColorForCourse: Colors.blue.shade400,
  ),
  Course(
    courseName: "Fen Bilimleri",
    imageUrl: "assets/questions/testIcon.png",
    testList: scienceTests,
    courseIcon: FontAwesomeIcons.flask,
    backgroundColor: Colors.orange,
    leftOfAppBarColorForCourse: Colors.orange.shade900,
    rightOfAppBarColorForCourse: Colors.orange.shade400,
  ),
  Course(
    courseName: "Türkçe",
    imageUrl: "assets/questions/testIcon.png",
    testList: scienceTests,
    courseIcon: FontAwesomeIcons.book,
    backgroundColor: Colors.purple,
    leftOfAppBarColorForCourse: Colors.purple.shade900,
    rightOfAppBarColorForCourse: Colors.purple.shade400,
  ),
  Course(
    courseName: "Sosyal Bilimler",
    imageUrl: "assets/questions/testIcon.png",
    testList: scienceTests,
    courseIcon: FontAwesomeIcons.mountain,
    backgroundColor: Colors.green,
    leftOfAppBarColorForCourse: Colors.green.shade900,
    rightOfAppBarColorForCourse: Colors.green.shade400,
  ),
  Course(
    courseName: "İngilizce",
    imageUrl: "assets/questions/testIcon.png",
    testList: scienceTests,
    courseIcon: FontAwesomeIcons.language,
    backgroundColor: Colors.red,
    leftOfAppBarColorForCourse: Colors.red.shade900,
    rightOfAppBarColorForCourse: Colors.red.shade300,
  ),
];