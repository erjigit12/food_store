// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoginPage3 extends StatefulWidget {
  LoginPage3({
    super.key,
    required this.email,
    required this.password,
  });

  String email;
  String password;

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email: ${widget.email}',
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              'Password: ${widget.password}',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
