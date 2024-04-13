import 'package:aceh_food/main.dart';
import 'package:aceh_food/pages/add_types.dart';
import 'package:aceh_food/pages/news_feed.dart';
import 'package:flutter/material.dart';
import 'package:aceh_food/pages/keranjang.dart';
import 'package:aceh_food/pages/login.dart';
import 'package:aceh_food/pages/offers.dart'; // Import OffersPage
import 'package:aceh_food/pages/profile.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment(0.0, 0.1),
          colors: [Colors.white.withOpacity(0.8), Colors.white], //
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Image(
              image: AssetImage('assets/Logo.jpeg'),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Keranjang'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Keranjang(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Offers'), // Tambahkan menu Offers
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OffersPage(),
                ),
              );
            },
          ),
          // Tambahkan menu untuk Latihan API (news_feed.dart)
          ListTile(
            title: const Text('Latihan API'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsFeedPage(),
                ),
              );
            },
          ),
          // Tambahkan menu untuk Latihan CRUD SQLITE (crud.dart)
          ListTile(
            title: const Text('Latihan CRUD SQLITE'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTypes(),
                ),
              );
            },
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Logout',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.logout,
                  color: Colors.red,
                )
              ],
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
