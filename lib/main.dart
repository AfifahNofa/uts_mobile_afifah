import 'package:flutter/material.dart';
import 'package:uts_mobile_afifah/login_page.dart';
import 'package:uts_mobile_afifah/signup_page.dart';
import 'package:uts_mobile_afifah/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
    }
    );
  }
}
