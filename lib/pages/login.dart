import 'package:flutter/material.dart';
import 'package:foodhub/widget/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
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
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular((20)),
                      topRight: Radius.circular((20)))),
              child: const Text(""),
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
                      width: MediaQuery.of(context).size.width / 1,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Login",
                            style: AppWidget.HeadLineTextFieldStlye(),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: AppWidget.SemiBoldTextFieldStlye(),
                                prefixIcon: const Icon(Icons.email_outlined)),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Text(
                            "Password",
                            style: AppWidget.HeadLineTextFieldStlye(),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: AppWidget.SemiBoldTextFieldStlye(),
                                prefixIcon:
                                    const Icon(Icons.password_outlined)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password ?",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(2),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Poppins1',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Not Signed in yet? Sign up",
                            style: AppWidget.SemiBoldTextFieldStlye(),
                          )
                        ],
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
