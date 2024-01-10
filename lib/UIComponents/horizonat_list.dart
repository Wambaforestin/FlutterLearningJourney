//creating a simple flutter application with a simple listview, horizontal listview.

import 'package:flutter/material.dart';

void main() {
  runApp(const HorizontalList());
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 133, 194, 224),
          title: const Text(
            'Horizontal List @flutterlearningjourney',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Color.fromARGB(255, 81, 255, 1),
              ),
              Container(
                width: 160.0,
                color: Color.fromARGB(255, 230, 4, 4),
              ),
              Container(
                width: 160.0,
                color: Color.fromARGB(255, 248, 244, 0),
              ),
              Container(
                width: 160.0,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              Container(
                width: 160.0,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
