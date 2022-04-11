import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var details = [
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'Portfolio',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'ITSNP ORG',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'ASK ITSNP',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'Information Paradox',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'My Facebook',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'My Instagram',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'My Linkedin',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'My Github',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'Thulo Technology',
        'url': 'https://www.rounakagrawal.com.np',
      },
      {
        'image':
            'https://itsnp.org/wp-content/uploads/2022/01/RounakAgrawal.webp',
        'title': 'Portfolio',
        'url': 'https://www.rounakagrawal.com.np',
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xff202124),
      appBar: AppBar(
        title: const Text('Url Launcher'),
        backgroundColor: const Color(0xffFA6167),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...details.map(
                (detail) => DisplayContainer(
                    image: detail['image'].toString(),
                    title: detail['title'].toString(),
                    url: Uri.parse(detail['url'].toString())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayContainer extends StatelessWidget {
  final String image;
  final String title;
  final Uri url;
  const DisplayContainer(
      {Key? key, required this.image, required this.title, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xfffa6167))),
      height: MediaQuery.of(context).size.width * .4,
      width: MediaQuery.of(context).size.width * .4,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xfffa6167),
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
