import 'package:flutter/material.dart';
import 'package:flutter_signature_view/flutter_signature_view.dart';

void main() {
  runApp(const MySignatureView());
}

class MySignatureView extends StatefulWidget {
  const MySignatureView({super.key});

  @override
  State<MySignatureView> createState() => _MySignatureViewState();
}

class _MySignatureViewState extends State<MySignatureView> {
  @override
  Widget build(BuildContext context) {
    // materialApp building block of the app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title of the app
      title: 'Flutter - Signature View',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        // appbar with title
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Signature View @flutterlearningjourney"),
        ),
        // Signature widget that
        // we are implement
        body: SignatureView(
          // canvas color
          backgroundColor: Colors.yellowAccent,
          penStyle: Paint()
            // pen color
            ..color = const Color.fromARGB(255, 9, 150, 84)
            // type of pen point circular or rounded
            ..strokeCap = StrokeCap.round
            // pen pointer width
            ..strokeWidth = 5.0,
          // data of the canvas
          onSigned: (data) {
            print("On change $data");
          },
        ),
      ),
    );
  }
}
