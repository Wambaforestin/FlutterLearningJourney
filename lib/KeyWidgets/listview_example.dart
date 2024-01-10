//creation a listview

import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewExample());
}

class ListViewExample extends StatelessWidget{
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('ListView Example @flutterlearningjourney'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map'),
              subtitle: const Text('Map View'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // do something
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_album),
              title: const Text('Album'),
              subtitle: const Text('Album View'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // do something
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone'),
              subtitle: const Text('Phone View'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // do something
              },
            ),
          ],
        ),
         bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      ),
      // adding a bottpm navigation bar
    );
  }

}