import 'package:flutter/material.dart';

import '../../../preferences/color.dart';

class CustomTextField extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final bool obscureText;

  const CustomTextField(
      {super.key, this.suffixIcon, this.prefixIcon, this.hintText, this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: prefixIcon,
          ),
          hintStyle: const TextStyle(color: AppColor.silverText, fontSize: 18),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: suffixIcon,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
          )),
    );
  }
}
