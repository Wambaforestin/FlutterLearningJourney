// creating a simple flutter app to demonstrate the use of flutter easy loading

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:const  MyEasyLoading(),
    builder: EasyLoading.init(),
  ));
}

class MyEasyLoading extends StatelessWidget {
  const MyEasyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Easy Loading @flutterlearningjourney'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.dismiss();
                });
              },
              child: const Text('Show Loading'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.showSuccess('Great Success!');
              },
              child: const Text('Show Success'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.showError('Failed with Error');
              },
              child: const Text('Show Error'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.showInfo('Useful Information.');
              },
              child: const Text('Show Info'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.showToast('Toast');
              },
              child: const Text('Show Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.showProgress(0.3, status: 'downloading...');
              },
              child: const Text('Show Progress'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.showSuccess('Great Success!');
                });
              },
              child: const Text('Show Loading then Success'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.showError('Failed with Error');
                });
              },
              child: const Text('Show Loading then Error'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.showInfo('Useful Information.');
                });
              },
              child: const Text('Show Loading then Info'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.showToast('Toast');
                });
              },
              child: const Text('Show Loading then Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                Future.delayed(const Duration(seconds: 3), () {
                  EasyLoading.showProgress(0.3, status: 'downloading...');
                });
              },
              child: const Text('Show Loading then Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
