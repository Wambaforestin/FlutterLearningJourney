import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';

// ignore: must_be_immutable
class NextFormPage extends StatelessWidget {
  String name;
  String email;
  NextFormPage({
    super.key,
    required this.name,
    required this.email,
  });
  @override
  Widget build(BuildContext context) {
    //to lsiten to the data from the previous page
    TextEditingController _textController = TextEditingController(text: name);
    TextEditingController _emailController = TextEditingController(text: email);
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: MainAppBar(
          title: "Welcome $name😊", backgroundColor: AppColors.primaryColor),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //Displaying a text to say that the data has been received
                const Text(
                  "Data received from the previous page",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    labelText: "Enter your name",
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  onSubmitted: (value) {
                    //
                  },
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Enter your email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  onSubmitted: (value) {
                    //
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Go Back",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
