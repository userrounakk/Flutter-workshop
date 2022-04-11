import 'package:flutter/material.dart';
import 'Pages/contact.dart';
import 'Pages/faq.dart';
import 'Pages/homapage.dart';
import 'Pages/services.dart';
import 'Pages/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(primarySwatch: Colors.lime),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        About.routeName: (context) => const About(),
        Contact.routeName: (context) => const Contact(),
        Services.routeName: (context) => const Services(),
        FAQs.routeName: (context) => const FAQs(),
      },
    );
  }
}
