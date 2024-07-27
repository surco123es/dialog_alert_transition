import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class multiAlert extends StatefulWidget {
  @override
  State<multiAlert> createState() => _multiAlert();
}

class _multiAlert extends State<multiAlert> {
  String stas = 'Text old';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi dialog'),
      ),
      body: Center(
        child: ListView(
          children: [
            for (transitionType e in transitionType.values) ...[
              TextButton(
                onPressed: () {
                  dialogAlertTransion(
                      context: context,
                      title: const Text('Flutter OutlinedButton Example'),
                      content: Column(
                        children: [
                          const Text(
                              'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                          ElevatedButton(
                            onPressed: () {
                              int token = controlDialogGO.generate();
                              dialogAlertTransion(
                                context: context,
                                title: const Text(
                                    'Flutter OutlinedButton Example'),
                                content: Column(
                                  children: [
                                    const Text(
                                        'FloatingActionButton (FAB) is a property of Scaffold(). In the above example, we’ve displayed a FloatingActionButton, also we’ve modified the style of that buttons such as color and position of the FAB. The output looks like this'),
                                    ElevatedButton(
                                      onPressed: () {
                                        controlDialogGO.close(
                                            token: token);
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
                                token: token,
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
                      closeFunc: () {
                        setState(() {
                          stas = 'New string';
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
