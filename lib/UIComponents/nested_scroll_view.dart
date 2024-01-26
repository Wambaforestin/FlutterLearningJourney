import 'package:flutter/material.dart';

void main() => runApp(const MyNestedScrollView());

class MyNestedScrollView extends StatelessWidget {
  const MyNestedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NestedScrollView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyNSV(),
    );
  }
}

class MyNSV extends StatelessWidget {
  const MyNSV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 165, 11, 11),
        title: const Text('NestedScrollView @flutterlearningjourney',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        )
        ),
      ),
      body: NestedScrollView(
        // Setting floatHeaderSlivers to true is required in order to float
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            //SliverAppBar is the header for the NestedScrollView which remains pinned at the top of the screenwhen the inner scroll view is scrolled.
            SliverAppBar(
              backgroundColor: Colors.red,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: const Text(
                    "Collapsing Toolbar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  background: Image.network(
                    "https://marketplace.canva.com/EAFackVYL6E/1/0/400w/canva-red-yellow-green-minimalist-black-history-month-animated-video-AdkXhai6QuQ.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'), // Display a list of items
            );
          },
        ),
      ),
    );
  }
}
