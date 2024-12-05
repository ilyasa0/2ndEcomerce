import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../preferences/color.dart';
import '../asset/customtf.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackGround,
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const Center(
            child: Text(
              'Register Page',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'Register Here if you don\'t have an account',
              style: TextStyle(color: AppColor.silverText),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.person),
            hintText: 'Name',
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.email),
            hintText: 'Email',
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye),
            obscureText: true,
            hintText: 'Password',
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye),
            hintText: 'Confirm Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ));
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}
