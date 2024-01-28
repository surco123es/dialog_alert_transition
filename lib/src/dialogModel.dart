// ignore_for_file: constant_identifier_names, camel_case_types, unused_element
import 'dart:math';

import 'package:flutter/material.dart';

class dialogState {
  AnimationController? animation;
  OverlayEntry state;
  dialogState({
    this.animation,
    required this.state,
  });
}

class _controllerGoALert {
  Map<int, dialogState> controll = {};
  int generate() {
    Random random = Random();
    int max = 99999;
    int min = 10000;
    int token = min + random.nextInt((max + 1) - 1);
    return token;
  }

  Future<bool> close(
      {required int token, required BuildContext context}) async {
    try {
      if (controll.containsKey(token)) {
        await controll[token]!.animation?.reverse().then((_) {
          controll[token]?.state.remove();
          controll.remove(token);
        });
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}

_controllerGoALert controlDialogGO = _controllerGoALert();

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
