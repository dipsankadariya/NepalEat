import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStlye() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        fontSize: 20);
  }

  static TextStyle HeadLineTextFieldStlye() {
    return TextStyle(
        color: Color.fromARGB(255, 232, 66, 16),
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        fontSize: 24);
  }

  static TextStyle LightTextFieldStlye() {
    return TextStyle(
        color: const Color.fromARGB(255, 226, 145, 38),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: 15);
  }

  static TextStyle SemiBoldTextFieldStlye() {
    return TextStyle(
        color: const Color.fromARGB(255, 84, 80, 80),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: 18);
  }
}
