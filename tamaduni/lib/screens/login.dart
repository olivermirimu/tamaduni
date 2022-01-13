import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Welcome Back To Tamaduni",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Image.asset(
          "assets/images/background.jpg",
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          
        ), Container(
          
        )
      ],
    )));
  }
}
