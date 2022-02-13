import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizzapp/screens/quiz/components/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
        actions: [
        FlatButton(onPressed: (){},
        child: Text('Skip')
        ,)
      ]),
      body: Body(),
    );
  }
}
