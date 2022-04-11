import 'package:flutter/material.dart';
import 'package:url_launcher/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Url Launcher',
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
