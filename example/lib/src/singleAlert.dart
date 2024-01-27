// ignore_for_file: camel_case_types

import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class singleAlert extends StatefulWidget {
  const singleAlert({super.key});

  @override
  State<singleAlert> createState() => _multiAlert();
}

class _multiAlert extends State<singleAlert> {
  String stas = 'texto anterior';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: ListView(
          children: [
            for (transitionType e in transitionType.values) ...[
              TextButton(
                onPressed: () {
                  int newToken = controlAlertGo.generate();
                  alertGo(
                      context: context,
                      title: const Text('Flutter OutlinedButton Example'),
                      content: const Column(
                        children: [
                          Text(
                              'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                        ],
                      ),
                      alignment: Alignment.topCenter,
                      blur: true,
                      duration: 1000,
                      backgroundColor: Colors.black,
                      transitionType: e,
                      token: newToken,
                      rejectString: 'Close alert',
                      acceptString: 'Confirm this alert',
                      rejectFunc: () {
                        print('this function use is reject alert');
                      },
                      acceptFunc: () {
                        print('this function use in accept alert');
                      },
                      closeFunc: () {
                        setState(() {
                          stas = 'nuevo texto';
                        });
                      });
                },
                child: Text(e.name),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
