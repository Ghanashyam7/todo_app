import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Signup_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:ui';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
       stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, usersnapshot) {
          if (usersnapshot.hasData) {
            return MyApp();
          } else {
            return AuthScreen();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.purple),
    );
  }
}