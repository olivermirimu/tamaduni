import 'package:flutter/material.dart';

class InfoSplash extends StatelessWidget {
  const InfoSplash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Welcome Back To Tamaduni",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Image.asset(
          "assets/images/background.jpg",
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ), 
      ],
      
    );
  }
}