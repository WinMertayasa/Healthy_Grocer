// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aceh_food/pages/drawer.dart';
import 'package:aceh_food/pages/login.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.transparent,
        child: DrawerScreen(),
      ),
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/Profile.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Nama',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'I Made Win Mertayasa',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'TTL',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Tabanan, 05-12-2003',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Alamat',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Jl. Darmawangsa Gg. 2 No. 4,Tabanan,Bali',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'No. Telp',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      '0895800206394',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            ],
          )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: 'Ingin Logout?',
              btnCancelOnPress: () {},
              btnOkOnPress: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false);
              },
            ).show();
          },
          child: Text(
            'Logout',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ),
    );
  }
}
