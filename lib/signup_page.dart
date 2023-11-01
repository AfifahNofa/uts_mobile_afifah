import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login_page.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
  
  static inputStyle(String s, String t) {}
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Image.asset(
                  "assets/logo.jpeg",
                  height: 100,
                  width: 100),
              ),
              Text(
                "Register", 
                style: TextStyle(fontSize: 20),)
              ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        inputStyle("Username              ", "Input Your Name"),
        inputStyle("Password              ", "Password with number and text"),
        inputStyle("Location                ", "Your Address"),
        inputStyle("Telephone             ", "Add Your Number Phone"),
        SizedBox(
          height: 80,
        ),
        Container(
          height: 50,
          width: 150, 
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 70, 7, 70),
            borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: (){}, 
              child: Text(
                "Register", 
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 150, 
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 70, 7, 70),
            borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text(
                "Back to Login", 
                style: TextStyle(fontSize: 20, color: Colors.white)
                ),
              ),
        ),
     ],
);
}
}