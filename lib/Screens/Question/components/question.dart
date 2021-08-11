import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz_app/Screens/Question/components/option.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Question{
  final String text;
  final String imageUrl;
  final List<Option> options;
  bool isLocked;
  Option selectedOption;

  Question({
    required this.text,
    required this.imageUrl,
    required this.options,
    this.isLocked = false,
    required this.selectedOption,
  });
}