import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';
import 'package:flutterlearningjourney/form_and_gestion/next_form_page.dart';
import 'package:flutterlearningjourney/home_app/home.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: const MainAppBar(
          title: "Data Tranfer", backgroundColor: AppColors.primaryColor),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextFormPage(
                      name: _textController.text,
                      email: _emailController.text,
                    ),
                  ),
                );
              },
              child: const Text(
                "Send Data To Next Page",
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
