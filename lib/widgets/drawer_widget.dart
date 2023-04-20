import 'package:flutter/material.dart';

import '../screens/home.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(30))),
          accountName: Text(
            'Pasindu Madushanka',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          accountEmail: Text('cnpharmacy.info@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://marketplace.canva.com/EAFEits4-uw/1/0/800w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-r0bPCSjUqg0.jpg'),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home_filled),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
        const Divider(
          height: 4,
          indent: 15,
          endIndent: 15,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.recent_actors),
          title: const Text('Schedules'),
        ),
        const Divider(
          height: 4,
          indent: 15,
          endIndent: 15,
        ),
        ListTile(
          onTap: () async {},
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
        ),
        const Divider(
          height: 4,
          indent: 15,
          endIndent: 15,
        ),
      ]),
    );
  }
}
