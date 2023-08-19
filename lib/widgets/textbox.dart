import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscure;

  const MyTextBox({
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: const TextStyle(
          color: Colors.orangeAccent,
          fontSize: 14
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      obscureText: obscure,
    );
  }
}