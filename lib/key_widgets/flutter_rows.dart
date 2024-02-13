//creating a simple flutter app illustrating the use of flutter columns

import 'package:flutter/material.dart';

void main() {
  runApp(const MyRows());
}

class MyRows extends StatelessWidget {
  const MyRows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Column Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyRowPage(),
    );
  }
}

class MyRowPage extends StatefulWidget {
  const MyRowPage({Key? key}) : super(key: key);

  @override
  _MyRowPageState createState() => _MyRowPageState();
}

class _MyRowPageState extends State<MyRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Flutter Row Demo @flutterlearningjourney',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
          ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                 color: Color.fromARGB(255, 48, 168, 0),
                shape: BoxShape.circle,
              ),
              child:const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                 color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                 color: Color.fromARGB(255, 255, 251, 0),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
