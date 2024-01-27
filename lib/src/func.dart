import 'package:dialog_alert_transition/src/alertWidget.dart';
import 'package:flutter/material.dart';

import 'alertModel.dart';

dialogAlertTransion({
  required BuildContext context,
  bool designer = false,
  Widget alertWd = const Text(''),
  Widget title = const Text(''),
  Widget content = const Text(''),
  transitionType transitionType = transitionType.Bounce,
  bool blur = true,
  bool close = true,
  bool animate = true,
  bool autoClose = false,
  bool buttonConfirm = true,
  Size size = Size.zero,
  int countDown = 0,
  int duration = 1000,
  int token = 0,
  bool outClose = true,
  String acceptString = 'Accept',
  String rejectString = 'Cancel',
  Alignment alignment = Alignment.center,
  Color backgroundColor = Colors.white,
  Function? acceptFunc,
  Function? rejectFunc,
  Function? closeFunc,
}) {
  try {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration.zero,
      barrierColor: Colors.transparent,
      pageBuilder: (BuildContext buildContext, animation, secondaryAnimation) {
        return SafeArea(
          child: MainAlertGo(
            acceptString: acceptString,
            rejectString: rejectString,
            title: title,
            contextMain: context,
            content: content,
            autoClose: autoClose,
            blur: blur,
            close: close,
            countDown: countDown,
            duration: duration,
            animate: animate,
            outClose: autoClose,
            alertWd: alertWd,
            designer: designer,
            animationType: transitionType,
            backgroundColor: Colors.black,
            alignment: alignment,
            acceptFunc: acceptFunc,
            closeFunc: closeFunc,
            rejectFunc: rejectFunc,
            buttonConfirm: buttonConfirm,
            token: token,
            size: Size.zero == size
                ? MediaQuery.of(context).size.width < 480
                    ? Size(MediaQuery.of(context).size.width - 20, 0)
                    : Size(MediaQuery.of(context).size.width / 3, 0)
                : size,
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
          child: child,
        );
      },
    );
  } catch (e) {
    print(e);
  }
}
