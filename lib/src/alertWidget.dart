// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:dialog_alert_transition/src/alertModel.dart';
import 'package:flutter/material.dart';

import '../animated/attention_seekers.dart';
import '../animated/bounces.dart';
import '../animated/elastics.dart';
import '../animated/fades.dart';
import '../animated/flips.dart';
import '../animated/slides.dart';
import '../animated/specials.dart';
import '../animated/zooms.dart';

class MainAlertGo extends StatelessWidget {
  BuildContext contextMain;
  bool blur, close, animate, autoClose, outClose, designer, buttonConfirm;
  transitionType animationType;

  Color backgroundColor;
  Alignment alignment;
  int duration, countDown, token;
  Widget content, title, alertWd;

  Function? acceptFunc, rejectFunc, closeFunc;

  String acceptString, rejectString;
  Size size;
  MainAlertGo({
    super.key,
    required this.title,
    required this.designer,
    required this.alertWd,
    required this.contextMain,
    required this.content,
    required this.blur,
    required this.outClose,
    required this.close,
    required this.animate,
    required this.autoClose,
    required this.countDown,
    required this.duration,
    required this.animationType,
    required this.backgroundColor,
    required this.alignment,
    required this.buttonConfirm,
    required this.acceptString,
    required this.rejectString,
    required this.size,
    required this.token,
    this.acceptFunc,
    this.closeFunc,
    this.rejectFunc,
  });

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
                color: backgroundColor.withOpacity(0.5), child: const Text('')),
          ),
          if (blur)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
            ),
          if (close)
            GestureDetector(
              onTap: () {
                controlAlertGo.controll[token]!
                    .reverse()
                    .then((_) => Navigator.of(context).pop());
              },
            ),
          Align(
              alignment: alignment,
              child: getAlert(
                type: animationType,
                wd: (!designer)
                    ? Container(
                        width: size.width,
                        height: size.height == 0 ? null : size.height,
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            ElevatedButton(
                                clipBehavior: Clip.none,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.black,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 5),
                                ),
                                onPressed: () {
                                  if (closeFunc != null) {
                                    closeFunc!();
                                  }
                                  controlAlertGo.controll[token]!
                                      .reverse()
                                      .then((_) => Navigator.of(context).pop());
                                },
                                child: const Text('X')),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              padding: EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurStyle: BlurStyle.outer,
                                    blurRadius: 10,
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    child: title,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: content,
                                  ),
                                  if (buttonConfirm)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent,
                                            ),
                                            onPressed: () {
                                              if (rejectFunc != null) {
                                                rejectFunc!();
                                              }
                                              controlAlertGo.controll[token]!
                                                  .reverse()
                                                  .then((_) =>
                                                      Navigator.of(context)
                                                          .pop());
                                            },
                                            child: Text(rejectString),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.greenAccent,
                                              shadowColor: Colors.transparent,
                                            ),
                                            onPressed: () {
                                              if (acceptFunc != null) {
                                                acceptFunc!();
                                              }
                                              controlAlertGo.controll[token]!
                                                  .reverse()
                                                  .then((_) =>
                                                      Navigator.of(context)
                                                          .pop());
                                            },
                                            child: Text(acceptString),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : alertWd,
              ))
        ],
      ),
    );
  }

  Widget getAlert({required transitionType type, required Widget wd}) {
    switch (type) {
      case transitionType.FadeIn:
        return FadeIn(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInDown:
        return FadeInDown(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInDownBig:
        return FadeInDownBig(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInUp:
        return FadeInUp(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInUpBig:
        return FadeInUpBig(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInLeft:
        return FadeInLeft(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInLeftBig:
        return FadeInLeftBig(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInRight:
        return FadeInRight(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FadeInRightBig:
        return FadeInRightBig(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.BounceInDown:
        return BounceInDown(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.BounceInUp:
        return BounceInUp(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.BounceInLeft:
        return BounceInLeft(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.BounceInRight:
        return BounceInRight(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ElasticIn:
        return ElasticIn(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ElasticInDown:
        return ElasticInDown(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ElasticInUp:
        return ElasticInUp(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ElasticInLeft:
        return ElasticInLeft(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ElasticInRight:
        return ElasticInRight(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.SlideInDown:
        return SlideInDown(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.SlideInUp:
        return SlideInUp(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.SlideInLeft:
        return SlideInLeft(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.SlideInRight:
        return SlideInRight(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FlipInX:
        return FlipInX(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.FlipInY:
        return FlipInY(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin/aquiFin
      case transitionType.ZoomIn:
        return ZoomIn(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.JelloIn:
        return JelloIn(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Bounce:
        return Bounce(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Dance:
        return Dance(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Flash:
        return Flash(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Pulse:
        return Pulse(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Roulette:
        return Roulette(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ShakeX:
        return ShakeX(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.ShakeY:
        return ShakeY(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Spin:
        return Spin(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.SpinPerfect:
        return SpinPerfect(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin
      case transitionType.Swing:
        return Swing(
            duration: Duration(milliseconds: duration),
            controller: (p0) {
              controlAlertGo.controll[token] = p0;
            },
            child: wd); //aquiFin

      // TODO: Handle this case.
    }
  }
}
