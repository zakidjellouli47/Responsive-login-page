import 'package:flutter/material.dart';
import 'package:responsive_login_page/login.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(theme:ThemeData(
        primaryColor: Colors.cyan
      ),
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,

      home:const login(),
    );
  }
}


