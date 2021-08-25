import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Courses/components/body.dart';
import 'package:flutter_quiz_app/Screens/Login/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
         if(snapshot.connectionState == ConnectionState.waiting){
            print("Data da 0");return Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasData){
            print("Data da ");
            return Body();
          }
          else if(snapshot.hasError){
            return Center(child: Text("Bir şeyler ters gitti!"),);
          }
          else{print("Data da 4"); return LoginScreen();}
        
      }
    ),
  );
}