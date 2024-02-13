import 'package:flutter/material.dart';

void main() {
  runApp(const MyTextSpan());
}

class MyTextSpan extends StatelessWidget {
  const MyTextSpan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('TextSpan @flutterlearningjourney',style: TextStyle( color: Colors.white),),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: 'My ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: ' App',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
