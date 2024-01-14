import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
/// this is the main function in which we are calling the App

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}
