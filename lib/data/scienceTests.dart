import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final scienceTests = <Test>[
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/physics.png',
    testName: 'Atom',
    testGrade: "7",
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.superscript,
    description: 'Practice questions from various chapters in physics',
    leftOfTestButtonColorForTest: Colors.orange.shade900,
    rightOfTestButtonColorForTest: Colors.orange.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/chemistry.png',
    testName: 'İş ve Enerji',
    testGrade: "7",
    backgroundColor: Colors.blue.shade500,
    icon: CupertinoIcons.triangle_fill,
    description: 'Practice questions from various chapters in chemistry',
    leftOfTestButtonColorForTest: Colors.orange.shade900,
    rightOfTestButtonColorForTest: Colors.orange.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/maths.png',
    testName: 'Elektrik',
    testGrade: "7",
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions from various chapters in maths',
    leftOfTestButtonColorForTest: Colors.orange.shade900,
    rightOfTestButtonColorForTest: Colors.orange.shade400,
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/biology.png',
    testName: 'Duyu Organları',
    testGrade: "7",
    backgroundColor: Colors.blue.shade500,
    icon: FontAwesomeIcons.exclamation,
    description: 'Practice questions from various chapters in biology',
    leftOfTestButtonColorForTest: Colors.orange.shade900,
    rightOfTestButtonColorForTest: Colors.orange.shade400,
  ),
];
