import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/data/tests.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final courses = <Course>[
  Course(
    courseName: "Matematik",
    imageUrl: "assets/questions/testIcon.png",
    testList: tests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
  ),
  Course(
    courseName: "Fen Bilimleri",
    imageUrl: "assets/questions/testIcon.png",
    testList: tests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
  ),
  Course(
    courseName: "Türkçe",
    imageUrl: "assets/questions/testIcon.png",
    testList: tests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
  ),
  Course(
    courseName: "Sosyal Bilimler",
    imageUrl: "assets/questions/testIcon.png",
    testList: tests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
  ),
  Course(
    courseName: "İngilizce",
    imageUrl: "assets/questions/testIcon.png",
    testList: tests,
    courseIcon: FontAwesomeIcons.squareRootAlt,
  ),
];