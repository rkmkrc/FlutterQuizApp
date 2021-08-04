import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/text_field_container.dart';
import 'package:flutter_quiz_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Şifre",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility, 
            color: kPrimaryColor,
          ),
          border: InputBorder.none, 
        ),
      ),
    );
  }
}

