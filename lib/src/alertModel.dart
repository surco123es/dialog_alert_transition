// ignore_for_file: constant_identifier_names, camel_case_types, unused_element
import 'dart:math';

import 'package:flutter/material.dart';

class _controllerGoALert {
  Map<int, AnimationController> controll = {};
  int generate() {
    Random random = Random();
    int max = 99999;
    int min = 10000;
    int token = min + random.nextInt((max + 1) - 1);
    return token;
  }

  Future<bool> close(
      {required int token, required BuildContext context}) async {
    if (controll.containsKey(token)) {
      controll[token]!.reverse().then((_) {
        Navigator.of(context).pop();
      });
      controll.remove(token);
      return true;
    } else {
      return false;
    }
  }
}

_controllerGoALert controlAlertGo = _controllerGoALert();

enum transitionType {
  FadeIn,
  FadeInDown,
  FadeInDownBig,
  FadeInUp,
  FadeInUpBig,
  FadeInLeft,
  FadeInLeftBig,
  FadeInRight,
  FadeInRightBig,
  BounceInDown,
  BounceInUp,
  BounceInLeft,
  BounceInRight,
  ElasticIn,
  ElasticInDown,
  ElasticInUp,
  ElasticInLeft,
  ElasticInRight,
  SlideInDown,
  SlideInUp,
  SlideInLeft,
  SlideInRight,
  FlipInX,
  FlipInY,
  ZoomIn,
  JelloIn,
  Bounce,
  Dance,
  Flash,
  Pulse,
  Roulette,
  ShakeX,
  ShakeY,
  Spin,
  SpinPerfect,
  Swing,
}
