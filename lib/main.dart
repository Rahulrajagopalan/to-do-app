import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_app/sreens/home.dart';
import 'package:to_do_app/sreens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User-List-App',
      home: HomePage(),
    );
  }
}
