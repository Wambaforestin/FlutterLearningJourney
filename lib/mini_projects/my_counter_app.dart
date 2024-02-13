import 'package:flutter/material.dart';

void main() {
  runApp(const MyCounterApp());
}

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  String sayNumberPushes({required final String message}) {
    // Add a return statement at the end of the method
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Counter App @flutterlearningjourney',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'XanhMono-Regular'),
          ),
          backgroundColor: const Color.fromARGB(255, 13, 127, 172),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sayNumberPushes(
                message: (_counter >= 0) ? 'Posistive numbers' : 'Negative numbers',
              ),
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 13, 127, 172),
                fontFamily: 'XanhMono-Regular',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 127, 172),
                  ),
                  onPressed: () {
                    // do something
                    _decrementCounter();
                  },
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
                Text('$_counter',
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontFamily: 'XanhMono-Regular',
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 127, 172),
                  ),
                  onPressed: () {
                    // do something
                    _incrementCounter();
                  },
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
