//Problem: the code below is not yet working .
//The code will be updated soon.

import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

void main() {
  runApp(const KFDrawerRun());
}

class KFDrawerRun extends StatelessWidget {
  const KFDrawerRun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: Page1(),
      items: [
        KFDrawerItem.initWithPage(
          text: const Text('Page1', style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.home, color: Colors.white),
          page: Page1(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text('Page2', style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.home, color: Colors.white),
          page: Page2(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: KFDrawer(
          borderRadius: 30.0,
          shadowBorderRadius: 30.0,
          menuPadding: const EdgeInsets.all(5.0),
          scrollable: true,
          controller: _drawerController,
          header: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Image.asset(
                'assets/gfg.png',
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Page1 extends KFDrawerContent {
  // Explicitly call the zero-argument constructor
  Page1() : super();

  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Page1'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Page2 extends KFDrawerContent {
  // Explicitly call the zero-argument constructor
  Page2() : super();

  @override
  Page2State createState() => Page2State();
}

class Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Page2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
