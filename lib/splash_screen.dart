import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:todo_app/Signup_Page.dart';
import 'package:todo_app/login_screen.dart';



class Splash   extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds:Login(),
            title: new Text(
              'TODO App',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
            image: new Image.asset('assets/images/abcd.png'),
            photoSize: 100.0,
            backgroundColor: Colors.purple,
            styleTextUnderTheLoader: new TextStyle(),
            loaderColor: Colors.white
        )
    );
  }
}