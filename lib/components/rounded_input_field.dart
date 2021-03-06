import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/text_field_container.dart';
import 'package:flutter_quiz_app/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key, 
    required this.hintText, 
    this.icon = Icons.person, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
          validator: (val) => val!.isEmpty ? 'E-posta boş bırakılamaz' : null,
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(
              icon, 
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none,
            ),
          
      ),
    );
  }
}



