import 'package:flutter/material.dart';
import 'package:quizzapp/screens/quiz/quiz_screen.dart';
import 'package:quizzapp/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
