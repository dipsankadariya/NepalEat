import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodhub/pages/bottomnavbar.dart';
import 'package:foodhub/pages/login.dart';
import '../widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _registration() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text.trim(),
                password: _passwordController.text);

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 20.0),
            )));

        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Bottomnavbar()));
      } on FirebaseAuthException catch (e) {
        String errorMessage;
        if (e.code == 'weak-password') {
          errorMessage = "The password provided is too weak";
        } else if (e.code == 'email-already-in-use') {
          errorMessage = "The account already exists for that email";
        } else {
          errorMessage = e.message ?? "An error occurred";
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              errorMessage,
              style: const TextStyle(fontSize: 18.0),
            )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Color(0xFFDC143C),
                    Color(0xFFFFD700),
                  ])),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.5),
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1),
                      topRight: Radius.circular(1))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                      child: ClipOval(
                    child: Image.asset(
                      "images/mainlogo.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  )),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Material(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      height: MediaQuery.of(context).size.height / 1.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      width: MediaQuery.of(context).size.width,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              "SignUp",
                              style: AppWidget.HeadLineTextFieldStlye(),
                            ),
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: AppWidget.SemiBoldTextFieldStlye(),
                                  prefixIcon:
                                      const Icon(Icons.person_2_outlined)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: AppWidget.SemiBoldTextFieldStlye(),
                                  prefixIcon: const Icon(Icons.email_outlined)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: AppWidget.SemiBoldTextFieldStlye(),
                                  prefixIcon:
                                      const Icon(Icons.password_outlined)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: _registration,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  width: 200,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontFamily: 'Poppins1',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: Text(
                                "Have an account? Login",
                                style: AppWidget.SemiBoldTextFieldStlye(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
