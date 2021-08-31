
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/userclass.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/wrapper.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application

  @override
  Widget build(BuildContext context) {
    
      return Provider<UserClass>(
        create: (_) => UserClass(uid: ''),

        child: StreamProvider<UserClass?>.value(
          value: AuthService().user,
          initialData: null,
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Quiz App',
            theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white,
            ),
            home: Wrapper(),
          
            ),
        ),
      );
  }
}

