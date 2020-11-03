import 'package:flutter/material.dart';
import 'package:softx_security/components/CustomBackground.dart';
import 'package:softx_security/components/LoadingButton.dart';
import 'package:softx_security/components/PasswordTextFieldWithShadow.dart';
import 'package:softx_security/components/TextFieldWithShadow.dart';
import 'package:softx_security/utils/AppConstant.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * .25),
              Row(
                children: [
                  SizedBox(width: 15),
                  Text('SignUp',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: size.height * 0.56,
                width: size.width * .9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: primaryShadow),
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFieldWithShadow(
                          hintText: "Email",
                          controller: null,
                        ),
                        SizedBox(height: 10),
                        PasswordTextFieldWithShadow(
                          hintText: 'Password',
                          controller: null,
                        ),
                        SizedBox(height: 10),
                        PasswordTextFieldWithShadow(
                          hintText: 'ConfirmPassword',
                          controller: null,
                        ),
                        SizedBox(height: 10),
                        LoadingButton(
                          isLoading: false,
                          defaultStyle: true,
                          onPressed: () {
                            //signUpProvider.goToMainPage();
                          },
                          backgroundColor: primaryColor,
                          child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Already have account',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
