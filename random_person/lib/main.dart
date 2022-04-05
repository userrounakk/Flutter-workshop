import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Random Images',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imageUrl = 'https://thispersondoesnotexist.com/image';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          setState(
            () {
              imageUrl = imageUrl + '?q' + Random().nextInt(10).toString();
            },
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Random Person'),
      ),
      body: SizedBox(
        child: Image.network(imageUrl),
      ),
    );
  }
}
