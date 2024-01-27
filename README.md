
# Project Title

crear un dialogo es más sencillo y fácil con el paquete de dialog_alert_transition ya que tiene transiciones de entrada y salida del dialogo, tiene un manejador de diálogos de multinivel. Disponible para android, ios, windows, linux, mac, web. 

Las transiciones son las siguientes: 

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

EJEMPLO: 

                                    


## Example

```dart

import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class singleAlert extends StatefulWidget {
  const singleAlert({super.key});

  @override
  State<singleAlert> createState() => _multiAlert();
}

class _multiAlert extends State<singleAlert> {
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
                  int newToken = controlAlertGo.generate();
                  dialogAlertTransion(
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
                          stas = 'new strin';
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
```


## Screenshots

![App Screenshot](https://github.com/surco123es/dialog_alert_transition/assets/13504354/32ecabe1-f2b6-48b2-9d91-187d0fa60e75)

