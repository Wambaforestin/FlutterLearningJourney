import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const ReadMoreRun());
}

class ReadMoreRun extends StatelessWidget {
  const ReadMoreRun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Read More',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Read More @flutterlearningjourney',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const Center(
          child: ReadMoreText(
            'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
            trimLines: 2,
            colorClickableText: Colors.red,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Show more',
            trimExpandedText: ' show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.red),
          ),
        ),
      ),
    );
  }
}
