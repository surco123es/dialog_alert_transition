// ignore_for_file: camel_case_types

import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class singleAlert extends StatefulWidget {
  const singleAlert({super.key});

  @override
  State<singleAlert> createState() => _singleAlert();
}

class _singleAlert extends State<singleAlert> {
  String stas = 'text old';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single dialog'),
      ),
      body: Center(
        child: ListView(
          children: [
            for (transitionType e in transitionType.values) ...[
              TextButton(
                onPressed: () {
                  dialogAlertTransion(
                      top: 15,
                      left: 25,
                      bottom: 25,
                      rigth: 50,
                      context: context,
                      title: const Text('Flutter OutlinedButton Example'),
                      content: const Column(
                        children: [
                          Text(
                              'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                        ],
                      ),
                      alignment: Alignment.topCenter,
                      blur: false,
                      duration: 1000,
                      backgroundColor: Colors.black.withOpacity(.5),
                      transitionType: e,
                      rejectString: 'Close',
                      acceptString: 'Confirm',
                      rejectFunc: () {
                        print('this function use is reject alert');
                      },
                      acceptFunc: () {
                        print('this function use in accept alert');
                      },
                      closeFunc: () {
                        setState(() {
                          stas = 'New String change var';
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
