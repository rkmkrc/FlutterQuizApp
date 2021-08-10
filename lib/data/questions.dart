import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Question/components/option.dart';
import 'package:flutter_quiz_app/Screens/Question/components/question.dart';


final questions = [
  Question(
    text: 'Which planet is the hottest in the solar system?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: 'Earth', isCorrect: false),
      Option(code: 'B', text: 'Venus', isCorrect: true),
      Option(code: 'C', text: 'Jupiter', isCorrect: false),
      Option(code: 'D', text: 'Saturn', isCorrect: false),
    ],
  ),
  Question(
    text: 'How many molecules of oxygen does ozone have?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '5', isCorrect: false),
      Option(code: 'D', text: '3', isCorrect: true),
    ],
  ),
  Question(
    text: 'What is the symbol for potassium?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: 'N', isCorrect: false),
      Option(code: 'B', text: 'S', isCorrect: false),
      Option(code: 'C', text: 'P', isCorrect: false),
      Option(code: 'D', text: 'K', isCorrect: true),
    ],
  ),
  Question(
    text:
        'Which of these plays was famously first performed posthumously after the playwright committed suicide?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: '4.48 Psychosis', isCorrect: true),
      Option(code: 'B', text: 'Hamilton', isCorrect: false),
      Option(code: 'C', text: "Much Ado About Nothing", isCorrect: false),
      Option(code: 'D', text: "The Birthday Party", isCorrect: false),
    ],
  ),
  Question(
    text: 'What year was the very first model of the iPhone released?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: '2005', isCorrect: false),
      Option(code: 'B', text: '2008', isCorrect: false),
      Option(code: 'C', text: '2007', isCorrect: true),
      Option(code: 'D', text: '2006', isCorrect: false),
    ],
  ),
  Question(
    text: ' Which element is said to keep bones strong?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(code: 'A', text: 'Carbon', isCorrect: false),
      Option(code: 'B', text: 'Oxygen', isCorrect: false),
      Option(code: 'C', text: 'Calcium', isCorrect: true),
      Option(code: 'D', text: 'Pottasium', isCorrect: false),
    ],
  ),
  Question(
    text: 'What country won the very first FIFA World Cup in 1930?',
    imageUrl: "assets/questions/exampleQuestion.PNG",
    options: [
      Option(
        code: 'A',
        text: 'Brazil',
        isCorrect: false,
      ),
      Option(code: 'B', text: 'Germany', isCorrect: false),
      Option(code: 'C', text: 'Italy', isCorrect: false),
      Option(code: 'D', text: 'Uruguay', isCorrect: true),
    ],
  ),
];
