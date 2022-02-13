import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizzapp/constants.dart';
import 'package:quizzapp/screens/quiz/components/progressbar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProgressBar(),
            SizedBox(height: kDefaultPadding),
            Text.rich(TextSpan(
                text: "Quesion 1",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
                children: [
                  TextSpan(
                    text: "/10",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: kSecondaryColor),
                  )
                ]))
          ],
        ),
      ))
    ]);
  }
}
