import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class ContactCard extends StatelessWidget {
  final String contactInfo;
  final IconData icon;
  final Function onTap;
  ContactCard(
      {required this.contactInfo, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        elevation: 10,
        color: Colors.blue,
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.blueGrey[900],
              size: 35.0,
            ),
            title: Text(
              contactInfo,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage("assets/images/p.jpg"),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "khaled ballla",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Flutter Diploma",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ContactCard(
            contactInfo: '0021012924459',
            icon: Icons.phone,
            onTap: () => _launchURL('tel:+201012924459'),
          ),
          ContactCard(
            contactInfo: 'khaled.non155@gmail.com',
            icon: Icons.email,
            onTap: () => _launchURL(
                'mailto:khalrd.non155@gmail.com?subject=App%20Contact&body='),
          ),
          ContactCard(
            contactInfo: 'khaled balla',
            icon: FontAwesome.github,
            onTap: () => _launchURL('https://github.com'),
          ),
          ContactCard(
            contactInfo: 'wedballla',
            icon: FontAwesome.facebook,
            onTap: () => _launchURL('https://www.facebook.com/wed.balla/'),
          ),
          ContactCard(
              contactInfo: 'king2000',
              icon: FontAwesome.telegram,
              onTap: () => _launchURL('https://www.telegram.com'))
        ],
      ),
    ));
  }
}
