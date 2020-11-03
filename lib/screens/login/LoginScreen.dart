import 'package:flutter/material.dart';
import 'package:softx_security/components/Animation/FadeAnimation.dart';
import 'package:softx_security/components/CustomBackground.dart';
import 'package:softx_security/components/LoadingButton.dart';
import 'package:softx_security/components/PasswordTextFieldWithShadow.dart';
import 'package:softx_security/components/TextFieldWithShadow.dart';
import 'package:softx_security/utils/AppConstant.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * .25),
              Row(
                children: [
                  SizedBox(width: 15),
                  FadeAnimation(
                    .5,
                    Text(
                      'Login',
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: size.width * .9,
                padding: EdgeInsets.only(
                    top: size.height * .07, bottom: size.height * .07),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: primaryShadow),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          TextFieldWithShadow(
                            hintText: 'Email',
                            controller: null,
                          )),
                      SizedBox(height: 10),
                      FadeAnimation(
                          1.4,
                          PasswordTextFieldWithShadow(
                            hintText: 'password',
                            controller: null,
                          )),
                      SizedBox(height: 10),
                      FadeAnimation(
                          1.8,
                          LoadingButton(
                            isLoading: false,
                            defaultStyle: true,
                            onPressed: () {
                              //  loginProvider.goToMainPage();
                            },
                            backgroundColor: primaryColor,
                            child: Container(
                                height: 30,
                                // width: mainWidth - 20 - (Dimension.padding * 2),
                                alignment: Alignment.center,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          )),
                      SizedBox(height: 20),
                      FadeAnimation(
                          2,
                          GestureDetector(
                            onTap: () {

                            },
                            child: Text(
                              "Don't Have Accout?",
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          )),
                      SizedBox(height: 20),
                      FadeAnimation(
                          2.2,
                          GestureDetector(
                            onTap: () {
                              // loginProvider.goToForgotScreen();
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
