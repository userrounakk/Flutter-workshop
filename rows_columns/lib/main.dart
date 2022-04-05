import 'package:flutter/material.dart';

import 'Pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rows and Columns',
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
