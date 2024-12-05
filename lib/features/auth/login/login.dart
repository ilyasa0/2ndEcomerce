import 'package:ecomerce/features/auth/register/register.dart';
import 'package:ecomerce/features/home/pages/index/page.dart';
import 'package:ecomerce/main.dart';
import 'package:ecomerce/preferences/preferences.dart';
import 'package:flutter/material.dart';

import '../asset/customtf.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackGround,
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Center(
              child: Text(
            'Login to your account',
            style: TextStyle(
              color: AppColor.silverText,
            ),
          )),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.person),
            hintText: 'name',
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye),
            hintText: 'Password',
            obscureText: true,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don`t have an account?',
                  style: TextStyle(
                    color: AppColor.silverText,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: AppColor.primaryColor),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
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

