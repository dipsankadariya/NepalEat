import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStlye() {
    return const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        fontSize: 20);
  }

  static TextStyle HeadLineTextFieldStlye() {
    return const TextStyle(
        color: Color.fromARGB(255, 232, 66, 16),
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        fontSize: 24);
  }

  static TextStyle LightTextFieldStlye() {
    return const TextStyle(
        color: Color.fromARGB(255, 226, 145, 38),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: 16);
  }

  static TextStyle SemiBoldTextFieldStlye() {
    return const TextStyle(
        color: Color.fromARGB(255, 84, 80, 80),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: 18);
  }
}
