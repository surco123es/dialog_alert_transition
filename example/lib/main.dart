import 'package:alert_go_example/src/customDialog.dart';
import 'package:alert_go_example/src/multiDialog.dart';
import 'package:alert_go_example/src/singleDialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
        )),
      ),
      home: mihome(),
    );
  }
}

class mihome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => multiAlert()),
                );
              },
              child: const Text('multi'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const customAlert()),
                );
              },
              child: const Text('Custom'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => singleAlert()),
                );
              },
              child: const Text('Single'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => singleAlert()),
                );
              },
              child: const Text('Position'),
            ),
          ),
        ],
      ),
    ));
  }
}
