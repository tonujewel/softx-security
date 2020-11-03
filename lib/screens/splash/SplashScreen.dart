import 'dart:async';
import 'package:flutter/material.dart';
import 'package:softx_security/components/Animation/FadeAnimation.dart';
import 'package:softx_security/components/CustomBackground.dart';
import 'package:softx_security/screens/login/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (Route<dynamic> route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomBackground(
        child: Center(
          child: FadeAnimation(2, imageColumn()),
        ),
      ),
    );
  }

  Column imageColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
      ],
    );
  }
}
