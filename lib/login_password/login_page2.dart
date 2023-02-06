// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizzastored/login_password/login_page_3.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  String email = '';
  String password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Регистрация',
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: TextFormField(
                onChanged: (value) {
                  email = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Эл. почта',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.account_box),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
              child: TextFormField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: _isObscure,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
            InkWell(
              onTap: () {
                if (password == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Паролду жазыныз!!!'),
                    ),
                  );
                } else {
                  Get.to(
                    () => LoginPage3(
                      email: email,
                      password: password,
                    ),
                  );
                }
              },
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0XFFC4C4C4),
                ),
                child: const Center(
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
