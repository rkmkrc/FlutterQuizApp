
import 'package:flutter_quiz_app/Classes/option.dart';
import 'package:flutter_quiz_app/Classes/question.dart';

final questions = [
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: 'Earth', isCorrect: false),
      Option(code: 'B', text: 'Venus', isCorrect: true),
      Option(code: 'C', text: 'Jupiter', isCorrect: false),
      Option(code: 'D', text: 'Saturn', isCorrect: false),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '5', isCorrect: false),
      Option(code: 'D', text: '3', isCorrect: true),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: 'N', isCorrect: false),
      Option(code: 'B', text: 'S', isCorrect: false),
      Option(code: 'C', text: 'P', isCorrect: false),
      Option(code: 'D', text: 'K', isCorrect: true),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: '4.48 Psychosis', isCorrect: true),
      Option(code: 'B', text: 'Hamilton', isCorrect: false),
      Option(code: 'C', text: "Much Ado About Nothing", isCorrect: false),
      Option(code: 'D', text: "The Birthday Party", isCorrect: false),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: '2005', isCorrect: false),
      Option(code: 'B', text: '2008', isCorrect: false),
      Option(code: 'C', text: '2007', isCorrect: true),
      Option(code: 'D', text: '2006', isCorrect: false),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: 'Carbon', isCorrect: false),
      Option(code: 'B', text: 'Oxygen', isCorrect: false),
      Option(code: 'C', text: 'Calcium', isCorrect: true),
      Option(
        code: 'D',
        text: 'Pottasium',
        isCorrect: false,
      ),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
  Question(
    imageUrl: 'assets/questions/exampleQuestion.png',
    options: [
      Option(code: 'A', text: 'Brazil', isCorrect: false),
      Option(code: 'B', text: 'Germany', isCorrect: false),
      Option(code: 'C', text: 'Italy', isCorrect: false),
      Option(code: 'D', text: 'Uruguay', isCorrect: true),
    ],
    selectedOption: Option(text: "SelectedOptionText", code: 'X', isCorrect: false),
  ),
];