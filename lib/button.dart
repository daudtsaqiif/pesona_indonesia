import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int number = 0;

  void counterNumber() {
    setState(() {
      number = number + 1;
      print(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Button Widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Number ke-${number}',
                style: TextStyle(fontSize: number.toDouble()),
              ),
              ElevatedButton(
                onPressed: counterNumber,
                child: Text('Counter'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = 0;
                  });
                },
                child: Text('button reset'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
