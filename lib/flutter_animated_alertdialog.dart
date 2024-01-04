import 'package:flutter/material.dart';

void main() => runApp(const MyFirstAlert());

// same as void main() {
//   runApp(const MyFirstAlert());
// }

class MyFirstAlert extends StatelessWidget {
  const MyFirstAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // defining the app's theme
      theme: ThemeData(
        // the app's primary color is yellow
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: OpenDialog(),
    );
  }
}
//creating the class open dialog, that class responsible to open the open the dialog alert
class OpenDialog extends StatelessWidget {
  const OpenDialog({super.key});

  //the function to show the animated dialog
  void _ShowAnimatedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AnimatedAlertDialog();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(136, 92, 32, 1),
          title: const Text('My First Animated Dialog Alert'),
        ),
        body: Center(
            child: ElevatedButton(
              onPressed: () {
                _ShowAnimatedDialog(context);
              },
              child: const Text('Show Animated Aialog'),
            )
        )
    );
  }
}
// creating the animated dialog alert class , to add animation to the alert
class AnimatedAlertDialog extends StatefulWidget{
  const AnimatedAlertDialog({super.key});

  @override
  _AnimatedAlertDialogState createState() => _AnimatedAlertDialogState();
}
class _AnimatedAlertDialogState extends State<AnimatedAlertDialog> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState(){
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(microseconds: 1000),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    //start the animation when the dialog box is displayed
    _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AlertDialog(
          title: const Text("Animated Alert Dialog"),
          content: const Text("This is an animated AlertDialog @WAMBA Forestin."),
          actions: <Widget>[
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                // Reverse the animation
                // and close the dialog
                _controller.reverse();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
