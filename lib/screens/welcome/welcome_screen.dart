import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/svg.dart';
import 'package:quizzapp/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex:  2),
              Text(
                "Let's Play Quizz,",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Text("Enter your informations below"),
              const Spacer(),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1C2341),
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const Spacer(),
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding:const EdgeInsets.all(kDefaultPadding*0.75),
                  decoration:const BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text("Let's Start Quiz",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.black),),
                ),
              ),
              const Spacer( flex:  2,),
            ],
          ),
        ))
      ],
    ));
  }
}
