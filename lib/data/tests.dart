import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


final tests = <Test>[
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/physics.png',
    testName: 'Üslü Sayılar',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.rocket,
    description: 'Practice questions from various chapters in physics', 
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/chemistry.png',
    testName: 'Üçgenler',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.atom,
    description: 'Practice questions from various chapters in chemistry',
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/maths.png',
    testName: 'Köklü Sayılar',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions from various chapters in maths',
  ),
  Test(
    questions: questions,
    parentCourseOfTest: 'Matematik',
    imageUrl: 'assets/biology.png',
    testName: 'Faktöriyel',
    backgroundColor: Colors.lightBlue,
    icon: FontAwesomeIcons.dna,
    description: 'Practice questions from various chapters in biology',
  ),
];