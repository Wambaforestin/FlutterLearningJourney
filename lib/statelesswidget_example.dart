// In this page we will write a simple code for a stateless widget

import 'package:flutter/material.dart';
void main() => runApp(const Mystatelesswidget());

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stateless Widget',
      home: Scaffold(
        body: Center(
          child: Text(
            'This is a Stateless Widget',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
