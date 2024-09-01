import 'package:chatapp3/HomePage.dart';
import 'package:chatapp3/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
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