import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> answersForFirstQuestion = [
    {
      "title": "Football",
      "onPressed": () => debugPrint('Football Choice'),
    },
    {
      "title": "Basketball",
      "onPressed": () => debugPrint('Basketball Choice'),
    },
    {
      "title": "Volleyball",
      "onPressed": () => debugPrint('Volleyball Choice'),
    },
    {
      "title": "Kickboxing",
      "onPressed": () => debugPrint('Kickboxing Choice'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'What is your favorite sport?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ),
            Column(
              children: answersForFirstQuestion
                  .map(
                    (answerMap) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: answerMap['onPressed'],
                          child: Text(answerMap['title']),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
