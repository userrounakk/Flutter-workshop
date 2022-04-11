import 'package:flutter/material.dart';
import 'package:navigation/Pages/contact.dart';
import 'package:navigation/Pages/faq.dart';
import 'package:navigation/Pages/services.dart';

import 'about.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('R'),
              ),
              accountName: Text('Rounak Agrawal'),
              accountEmail: Text('contact@rounak.com.n['),
            ),
            ListTile(
              title: const Text('Home Page'),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pushNamed(context, HomePage.routeName),
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.info),
              onTap: () => Navigator.pushNamed(context, About.routeName),
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.phone),
              onTap: () => Navigator.pushNamed(context, Contact.routeName),
            ),
            ListTile(
              title: const Text('Services'),
              leading: const Icon(Icons.room_service),
              onTap: () => Navigator.pushNamed(context, Services.routeName),
            ),
            ListTile(
              title: const Text('FAQs'),
              leading: const Icon(Icons.question_answer),
              onTap: () => Navigator.pushNamed(context, FAQs.routeName),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('HomePage')),
    );
  }
}
