import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignupScreen extends StatefulWidget {
  

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final  TextEditingController emailController = TextEditingController();

  // void registerUser() async {
  //   if(emailController.text.isno) 
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(hintText: 'email'),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  // registerUser(
                  // widget.email,
                  //   passwordController.text,
                  //   nameController.text,
                  // );
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
