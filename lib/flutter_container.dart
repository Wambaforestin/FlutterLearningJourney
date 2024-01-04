import 'package:flutter/material.dart';

void main() => runApp(const MyFirstContainer());

class MyFirstContainer extends StatelessWidget {
  const MyFirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Container @WAMBA Forestin'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          height: 400,
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0.9),
          margin: const EdgeInsets.all(0.9),
          decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
