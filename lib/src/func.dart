import 'package:dialog_alert_transition/src/dialogWidget.dart';
import 'package:flutter/material.dart';

import 'dialogModel.dart';

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
  double top = 0,
  double left = 0,
  double rigth = 0,
  double bottom = 0,
}) async {
  try {
    if (controlDialogGO.controll.containsKey(token)) {
      await controlDialogGO.close(token: token, context: context);
    }
    controlDialogGO.controll.addAll({
      token: dialogState(
        state: OverlayEntry(
          builder: (context) {
            return Positioned(
              top: top,
              bottom: bottom,
              left: left,
              right: rigth,
              child: MainAlertGoDialog(
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
                backgroundColor: backgroundColor,
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
        ),
      )
    });
    Overlay.of(context).insert(controlDialogGO.controll[token]!.state);
  } catch (e) {
    print(e);
  }
}
