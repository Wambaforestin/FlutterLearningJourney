// creating a simple flutter app to demonstrate a dialogs

import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp( const MyAppD());
}

class MyAppD extends StatelessWidget {
  const MyAppD({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the classes directly, without the 'path' prefix
    return Localizations( // Add this widget
      locale: const Locale('en', 'US'), // Choose your locale
      delegates: const [
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      child: MyDialogs(),
    );
  }
}

class MyDialogs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Dialogs @flutterlearningjourney'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dialogs'),
            // showing a alert dialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Show Alert Dialog'),
            ),
            const SizedBox(height: 20),
            // showing a simple dialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                    title: const Text('Simple Dialog Title'),
                    children: [
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Option 1'),
                        child: const Text('Option 1'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Option 2'),
                        child: const Text('Option 2'),
                      ),
                      SimpleDialogOption(
                        onPressed: () => Navigator.pop(context, 'Option 3'),
                        child: const Text('Option 3'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Show Simple Dialog'),
            ),

            const SizedBox(height: 20),
            // showing a bottom sheet
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) => Container(
                    height: 200,
                    color: Colors.amber,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('BottomSheet'),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close BottomSheet'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: const Text('Show BottomSheet'),
            ),
          ],
        ),
      ),
    );
  }
}
