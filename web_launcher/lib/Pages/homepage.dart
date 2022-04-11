import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        'image': 'https://itsnp.org/wp-content/uploads/2022/02/ITSNP.webp',
        'title': 'ITSNP ORG',
        'url': 'https://www.itsnp.org',
      },
      {
        'image': 'https://askitsnp.com/wp-content/uploads/2022/03/logo-1.png',
        'title': 'ASK ITSNP',
        'url': 'https://www.askitsnp.com',
      },
      {
        'image':
            'https://instagram.fktm12-1.fna.fbcdn.net/v/t51.2885-19/196905164_384656112928572_5258475571293679577_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fktm12-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=cejnYpgulg0AX8um4lv&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT9diP_X-7Y5e3A2-SDnc9252xActHO4QqpADyDLYUDtMA&oe=625A469C&_nc_sid=7bff83',
        'title': 'Information Paradox',
        'url': 'https://www.rounak.com.np',
      },
      {
        'image':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/1200px-2021_Facebook_icon.svg.png',
        'title': 'My Facebook',
        'url': 'https://www.facebook.com/userrounakk',
      },
      {
        'image':
            'https://pbs.twimg.com/profile_images/1306051401236099072/nuSA8oqW_400x400.jpg',
        'title': 'My Instagram',
        'url': 'https://www.instagram.com/userrounakk',
      },
      {
        'image':
            'http://theamericanprowler.com/wp-content/uploads/2019/11/unnamed.jpg',
        'title': 'My Linkedin',
        'url': 'https://www.linkedin.com/in/userrounakk',
      },
      {
        'image':
            'https://www.kindpng.com/picc/m/255-2558173_github-logo-png-transparent-png.png',
        'title': 'My Github',
        'url': 'https://www.github.com/userrounakk',
      },
      {
        'image':
            'https://thulotechnology.com/ubunseem/2020/12/cropped-thulotechnologylogo-1.png',
        'title': 'Thulo Technology',
        'url': 'https://www.thulotechnology.com',
      },
      {
        'image':
            'https://scontent.fktm12-1.fna.fbcdn.net/v/t39.30808-1/278125808_416006080531304_5538145941434948770_n.png?stp=dst-png_p480x480&_nc_cat=105&ccb=1-5&_nc_sid=c6021c&_nc_ohc=Sk0vmisH0GoAX_FUfkw&_nc_ht=scontent.fktm12-1.fna&oh=00_AT8MFqNnuYjguqu9Khj-UxRMkbVSUay1ccBHf7hi6acPxA&oe=625908A2',
        'title': 'Nest Nepal',
        'url': 'https://www.nestnepal.com',
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xff202124),
      appBar: AppBar(
        title: const Text('Url Launcher'),
        backgroundColor: const Color(0xffFA6167),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('R'),
              ),
              accountName: Text(
                'Rounak Agrawal',
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text('contact@rounak.com.np'),
            ),
          ],
        ),
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
                    url: detail['url'].toString()),
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
  final String url;
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
        onTap: () => launch(url),
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
