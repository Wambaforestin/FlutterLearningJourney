import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';

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
        backgroundColor: AppColors.appBackground,
        appBar: AppBar(
          title: const Text(
            'My Counter App',
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'XanhMono-Regular'),
          ),
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sayNumberPushes(
                message:
                    (_counter >= 0) ? 'Posistive numbers' : 'Negative numbers',
              ),
              style: const TextStyle(
                fontSize: 20,
                color: AppColors.primaryColor,
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
                    backgroundColor: AppColors.primaryColor,
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
                    backgroundColor: AppColors.primaryColor,
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
