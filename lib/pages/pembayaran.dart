// ignore_for_file: prefer_const_constructors
import 'package:aceh_food/main.dart';
import 'package:flutter/material.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Payment via QRIS',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/Qris.jpg'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                      (route) => false);
                },
                child: Text('Kembali ke Home'))
          ],
        ),
      ),
    );
  }
}
