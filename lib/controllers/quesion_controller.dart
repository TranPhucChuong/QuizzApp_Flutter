// ignore_for_file: prefer_const_constructors

import 'package:flutter/animation.dart';
import 'package:get/state_manager.dart';

class QuesionController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController? _animationController;
  Animation? _animation;

  // ignore: unnecessary_this
  Animation? get animation => this._animation;

  @override
  void onInit() {
     _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        // update like setState
        update();
      });
    _animationController?.forward();
    super.onInit();
  }
}
