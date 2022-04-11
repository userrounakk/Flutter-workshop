import 'package:flutter/material.dart';
import 'contact.dart';
import 'faq.dart';
import 'homapage.dart';
import 'services.dart';

class About extends StatelessWidget {
  static String routeName = 'about';
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
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
      body: const Center(child: Text('About')),
    );
  }
}
