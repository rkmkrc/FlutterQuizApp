import 'package:flutter_quiz_app/Classes/option.dart';

class Question {
  
  final String imageUrl;
  final List<Option> options;
  bool isLocked;
  Option selectedOption;

  Question({
    required this.imageUrl,
    required this.options,
    this.isLocked = false,
    required this.selectedOption,         // When creating test instances, quesitons must be
                                            //selectedOption = dummyOption.
  });
}