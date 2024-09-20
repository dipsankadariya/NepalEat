import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/pages/forgotpassword.dart';
import 'package:foodhub/pages/onboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyABrZN3hgPvNLCC6TahyAoPKy_W1D2U6Ek",
    appId: "1:286006957836:android:e094f501e0a637d57fdb29",
    messagingSenderId: "286006957836",
    projectId: "nepaleatsapp",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}
