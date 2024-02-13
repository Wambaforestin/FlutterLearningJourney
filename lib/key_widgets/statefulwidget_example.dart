// creatings simple stateful widget
import 'package:flutter/material.dart';

void main() => runApp(const Mystatefulwidget());

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MystatefulwidgetState();
}

class _MystatefulwidgetState extends State<Mystatefulwidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful Widget @flutterlearningjourney',
      home: Scaffold(
        body: Center(
          child: Text(
            'This is a Stateful Widget',
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

