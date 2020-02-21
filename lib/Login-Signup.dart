import 'package:flutter/material.dart';

class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  
     @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/login-signup.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content content here */,
      ),
    );
  }
}