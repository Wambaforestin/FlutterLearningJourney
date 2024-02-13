// A simple app to display custom fonts.
//  e.g : XanhMono from Google Fonts path : https://fonts.google.com/specimen/Xanh+Mono

import 'package:flutter/material.dart';

void main() {
  runApp(const CustomFonts());
}

class CustomFonts extends StatelessWidget {
  const CustomFonts({super.key});
  static const String _title = 'Custom Fonts';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});
  static const String _title = 'Custom Fonts @flutterlearningjourney';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            _title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'XanhMono',
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Custom Fonts  - Regular',
                style: TextStyle(
                  fontFamily: 'XanhMono',
                  fontSize: 30,
                ),
              ),
              Text(
                'Custom Fonts - Italic',
                style: TextStyle(
                  fontFamily: 'XanhMono',
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.deepPurple,
            ),
          ],
        ));
  }
}
