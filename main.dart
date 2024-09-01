import 'package:chatapp3/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:messaging_app/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F53),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF5F5F3),
          foregroundColor: Colors.black,
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => HomePage(),
      },
    );
  }
}
