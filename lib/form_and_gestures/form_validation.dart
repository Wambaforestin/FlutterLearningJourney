import "package:flutter/material.dart";
import "package:flutterlearningjourney/custom_widgets/colors.dart";
import "package:flutterlearningjourney/custom_widgets/main_appbar.dart";
import "package:flutterlearningjourney/form_and_gestures/password_validation.dart";

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: const MainAppBar(
            title: "Form Validation", backgroundColor: AppColors.primaryColor),
        body: const FormValidation(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PasswordValidation(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
      ),
    );
  }
}

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  var isloading = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Form is valid"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Form is invalid"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your name",
              ),
              keyboardType: TextInputType.text,
              obscureText: false,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your name";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your email",
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return "Please enter your email";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your password",
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onFieldSubmitted: (value) {
                //
              },
              validator: (value) {
                if (value!.isEmpty || value.length < 8) {
                  return "Please enter your password";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
