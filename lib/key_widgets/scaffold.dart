// In this sessions we will discuss more about the scaffold widget : appbar,floatingActionButton,Drawers,MaterialApp and bottomNavigationBar in details.

import 'package:flutter/material.dart';

void main() => runApp(const MyFirstScaffold());

class MyFirstScaffold extends StatelessWidget {
  const MyFirstScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'My first scaffold @flutterlearningjourney',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'This is a Scaffold',
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(5),
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(color: Colors.blue),
                    accountName: const Text(
                      'WAMBA Forestin',
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: const Text('f.wanbazebaze@ecoles-epsi.net'),
                    currentAccountPictureSize: const Size.square(60),
                    currentAccountPicture: CircleAvatar(
                      radius: 60.0, // Set the radius of the CircleAvatar
                      child: ClipOval(
                        child: Image.network(
                          'https://portfoliowambaforestin.web.app/images/me.jpg',
                          width: 100.0, // Set the width of the image
                          height: 100.0, // Set the height of the image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('My Course'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text('Go premium'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text('Saved Videos'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit Profile'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: (){
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          onPressed: () {},
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.blue,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.blue,
            items: const<BottomNavigationBarItem> [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),
      ),
    );
  }
}
