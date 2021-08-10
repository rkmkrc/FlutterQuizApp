import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Question/components/test.dart';


class Category {
  final String categoryName;
  final int grade;
  final String iconUrl;
  final List<Test> tests;
  final Color backgroundColor;

  Category({
    required this.categoryName,
    required this.grade,
    required this.iconUrl,
    required this.tests,
    required this.backgroundColor,
  });
}
