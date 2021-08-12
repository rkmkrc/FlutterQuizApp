import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/course.dart';
import 'package:flutter_quiz_app/data/courses.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoursesWidget extends StatelessWidget {
  final Course course;

  const CoursesWidget({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: course.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                course.courseIcon,
                color: Colors.white,
                size: 36,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                course.courseName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
}
