import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(                               //whatever u want to display in screen use scaffold
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),//container ko use karke padding ya margin de sakte h
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
      const Text("Login", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold),
        ),
      SizedBox(height: 30),
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "Enter User Name" ,
          labelText: "User Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      SizedBox(height: 30),
      TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,                         //this is methode which takes input hiding password
        decoration: InputDecoration(
          hintText: "Enter password" ,
          labelText: "password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      SizedBox(height: 30),
      RichText(text: TextSpan(children: [
        const TextSpan(text: "Need an account?",
                 style: TextStyle(color: Colors.black)),
          WidgetSpan(child: SizedBox(width: 5)),
        TextSpan(
            text: "Regiter here",
            style: TextStyle(color: Colors.black),
            recognizer: TapGestureRecognizer() ..onTap = (){
             // todo: navigate to reister screen
            }
        )
      ]
      )
      ),
      ],
    ),
    ),
    );
  }
}
