// creating a simple linear and circular progress bar

import 'package:flutter/material.dart';

void main() => runApp(const MyLoader());

class MyLoader extends StatelessWidget {
  const MyLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      home: const Loader(),
    );
  }
}

class Loader extends StatelessWidget {
  const Loader({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 255, 96),
        title: const Text('Loader @flutterlearningjourney', style: TextStyle(color: Colors.black,fontFamily: 'Pacifico',fontSize: 20)),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinearProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

