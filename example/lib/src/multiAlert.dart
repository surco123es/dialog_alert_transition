import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class multiAlert extends StatefulWidget {
  @override
  State<multiAlert> createState() => _multiAlert();
}

class _multiAlert extends State<multiAlert> {
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
                  print('token principal $newToken');
                  alertGo(
                      context: context,
                      title: const Text('Flutter OutlinedButton Example'),
                      content: Column(
                        children: [
                          const Text(
                              'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                          ElevatedButton(
                            onPressed: () {
                              int newToken = controlAlertGo.generate();
                              print('token principal $newToken');
                              alertGo(
                                context: context,
                                title: const Text(
                                    'Flutter OutlinedButton Example'),
                                content: Column(
                                  children: [
                                    const Text(
                                        'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                                    ElevatedButton(
                                      onPressed: () {
                                        controlAlertGo.controll[newToken]!
                                            .reverse()
                                            .then(
                                          (_) {
                                            Navigator.of(context).pop();
                                          },
                                        );
                                      },
                                      child: const Text('back'),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.topCenter,
                                blur: true,
                                transitionType: transitionType.ElasticIn,
                                duration: 1000,
                                backgroundColor: Colors.black,
                                token: newToken,
                                closeFunc: () {
                                  setState(() {
                                    stas = 'New  String';
                                  });
                                },
                              );
                            },
                            child: const Text('new Alert'),
                          ),
                        ],
                      ),
                      alignment: Alignment.topCenter,
                      blur: true,
                      duration: 1000,
                      backgroundColor: Colors.black,
                      transitionType: e,
                      token: newToken,
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
