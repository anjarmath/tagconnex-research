// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taxconnect/const/color.dart';
import 'package:taxconnect/db/postgres.dart';
import 'package:taxconnect/pages/db_page.dart';
import 'package:taxconnect/pages/qr_page.dart';

import '../../const/textFieldWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blue,
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          elevation: 20,
          shadowColor: Colors.black38,
          color: white,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            width: pageWidth * 0.9,
            height: pageWidth * 1.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    color: blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      SizedBox(height: 42),
                      TextFieldWidget(
                        isObscure: false,
                        hintText: "Email",
                        icon: Icon(Icons.email_rounded),
                      ),
                      SizedBox(height: 20),
                      TextFieldWidget(
                        isObscure: true,
                        hintText: "Password",
                        icon: Icon(Icons.key_off_rounded),
                      ),
                      SizedBox(height: 24),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PostgresDatabasePage()));
                        },
                        color: blue,
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Container(
                          width: pageWidth,
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
