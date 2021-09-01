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
      child: TextFormField(
          validator: (val) => val!.length < 6 ? 'Parola en az 6 karakter olmalıdır' : null,
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: "Parola",
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

