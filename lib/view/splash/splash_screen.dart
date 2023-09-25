import 'dart:async';

import 'package:flutter/material.dart';

import '../quiz_screen/quiz_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => QuizScreen(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [Image.asset('assets/images/quiz.png'),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              color: Colors.red,)],),
        ),
      ));
  }
}