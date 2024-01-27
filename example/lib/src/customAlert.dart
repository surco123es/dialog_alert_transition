// ignore_for_file: camel_case_types, must_be_immutable

import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class customAlert extends StatefulWidget {
  const customAlert({super.key});

  @override
  State<customAlert> createState() => _customAlert();
}

class _customAlert extends State<customAlert> {
  String stas = 'String old';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custon dialog alert'),
      ),
      body: Center(
        child: ListView(
          children: [
            for (transitionType e in transitionType.values) ...[
              TextButton(
                onPressed: () {
                  int newToken = controlAlertGo.generate();
                  dialogAlertTransion(
                    transitionType: e,
                    token: newToken,
                    context: context,
                    designer: true,
                    alertWd: customWidget(token: newToken),
                  );
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

class customWidget extends StatelessWidget {
  int token;
  customWidget({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: MediaQuery.of(context).size.height - 20,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurStyle: BlurStyle.outer,
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height: 45,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controlAlertGo.close(token: token, context: context);
                  },
                  child: const Text('back'),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 45,
            bottom: 0,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    overflow: TextOverflow.clip,
                    '''Once upon a time there was a small town nestled among the mountains. Its cobblestone streets were full of life and color, and its inhabitants all knew each other by name. In the center of the town stood an old stone church, with a bell tower that rang every hour.
                      
                      One day, a stranger came to town. He was a tall, thin man, with tired eyes and an unkempt beard. His name was Martín and he came in search of something that he had lost a long time ago.
                      
                      Martín settled in a small inn on the edge of the town. During the day, he walked the streets with his gaze lost, as if he were looking for something he couldn't find. The townspeople looked at him with curiosity, but no one dared to ask him what was happening to him.
                      
                      One afternoon, Martín approached the church bell tower. He climbed the stone steps with difficulty and stopped on the wooden platform. He looked toward the horizon, where the mountains were lost in the mist.
                      
                      "What are you looking for, stranger?" —A voice asked behind him.
                      
                      Martín turned around and saw an old man with a sun-beaten face. The old man was wearing a straw hat and carrying a wooden stick in his hand.
                      
                      "I'm looking for answers," Martín responded. I have lost something very important and I don't know where to find it.
                      
                      The old man smiled and sat down on a stone bench.
                      
                      "The answers are in the wind," he said. Listen to his whisper and you will find what you are looking for.
                      
                      Martin was perplexed. How could the wind have answers? But he decided to follow the old man's advice. He closed his eyes and let himself be carried away by the breeze that caressed his face.
                      
                      And then, Martín heard a murmur. It was as if the wind spoke to him in an ancient and forgotten language. The words hung in the air, carrying him towards the mountains.
                      
                      Martín walked for days, following the whisper of the wind. He crossed rivers and forests, avoided rocks and precipices. Finally, he came to a cave at the top of a mountain.
                      
                      Inside the cave, he found what he had been looking for: an old book with worn covers. Its pages were filled with symbols and words in an unknown language. Martin felt that he had found a lost treasure.
                      
                      He returned to town with the book under his arm. The old man was waiting for him in the bell tower.
                      
                      "You have found what you were looking for," said the old man. Now, decipher the words of the wind and you will find the truth.
                      
                      Martín spent years studying the book. He learned their language and discovered that it contained ancient secrets about life and death, love and destiny. He shared his wisdom with the townspeople, and they all marveled at his teachings.
                      
                      And so, Martín found his place in the world. He was no longer a lost stranger, but a guardian of ancient wisdom. And every time the wind blew through the mountains, Martin listened to its whisper and smiled, because he knew that the answers were there, waiting to be discovered12.'''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
