import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() press;
  
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    this.login = true, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Hesabın yok mu? " : "Zaten Hesabın Var Mı ?",
      style: TextStyle(
        color: kPrimaryColor),
        ),
      GestureDetector(
        onTap: press,
        child: Text(
          login ? "Üye Ol!" : "Giriş Yap",
          style: TextStyle(
          color: kPrimaryColor, 
          fontWeight: FontWeight.bold),
          ),
      ),
      ],
    );
  }
}

