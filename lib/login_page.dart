import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        // Add a Positioned widget to the logo container
        Padding(
  padding: const EdgeInsets.only(top: 50.0), // Sesuaikan nilai top sesuai kebutuhan
  child: Container(
    height: 180,
    width: 180,
    alignment: Alignment.center,
    child: Image.asset("assets/logo.jpeg"),
  ),
),
        SizedBox(
          height: 50,
        ),
        inputStyle("Username", "Enter your username"),
        SizedBox(
          height: 20,
        ),
        inputStyle("Password", "Enter your password"),
        SizedBox(
          height: 60, // Adjust the spacing between input fields
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 70, 7, 70),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?  ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              TextSpan(
                text: "Register",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 85, 23, 72)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed('/register');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget inputStyle(String title, String hinTxt) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
      child: Row(
        children: [
          Text("$title :", style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 130, 91, 126).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hinTxt,
                ),
              ),
            ),
          ),
      ],
));
}