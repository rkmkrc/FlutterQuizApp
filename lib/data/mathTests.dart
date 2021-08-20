import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final mathTests = <Test>[
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/physics.png',
    testName: 'Üslü Sayılar',
    testGrade: "7",
    durationForTest: 60,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.superscript,
    description: 'Practice questions from various chapters in physics',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/chemistry.png',
    testName: 'Üçgenler',
    testGrade: "7",
    durationForTest: 90,
    backgroundColor: Colors.blue.shade500,
    icon: CupertinoIcons.triangle_fill,
    description: 'Practice questions from various chapters in chemistry',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/maths.png',
    testName: 'Köklü Sayılar',
    testGrade: "7",
    durationForTest: 120,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions from various chapters in maths',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/biology.png',
    testName: 'Faktöriyel',
    testGrade: "7",
    durationForTest: 10,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.exclamation,
    description: 'Practice questions from various chapters in biology',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/physics.png',
    testName: 'Üslü Sayılar',
    testGrade: "7",
    durationForTest: 60,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.superscript,
    description: 'Practice questions from various chapters in physics',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/chemistry.png',
    testName: 'Üçgenler',
    testGrade: "7",
    durationForTest: 60,
    backgroundColor: Colors.blue.shade500,
    icon: CupertinoIcons.triangle_fill,
    description: 'Practice questions from various chapters in chemistry',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/maths.png',
    testName: 'Köklü Sayılar',
    testGrade: "7",
    durationForTest: 60,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions from various chapters in maths',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/biology.png',
    testName: 'Faktöriyel',
    testGrade: "7",
    durationForTest: 60,
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.exclamation,
    description: 'Practice questions from various chapters in biology',
    leftOfTestButtonColorForTest: Colors.indigo.shade900,
    rightOfTestButtonColorForTest: Colors.blue.shade400,
  ),
];
