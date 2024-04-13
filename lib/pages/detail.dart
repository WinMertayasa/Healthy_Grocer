// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last
import 'package:aceh_food/pages/pembayaran.dart';
import 'package:aceh_food/utils/var_global.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String img, title, deskripsi, harga;

  const DetailPage({
    Key? key,
    required this.img,
    required this.title,
    required this.deskripsi,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      deskripsi,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        'Harga',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            harga,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 5),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan item ke keranjang
                  VarGlobal.keranjang.add({
                    'img': img,
                    'title': title,
                    'harga': harga,
                  });
                  // Tampilkan pesan sukses
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Item ditambahkan ke keranjang')),
                  );
                },
                child: Text('Tambah ke Keranjang'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // foreground
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PembayaranPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.check_outlined, // Menggunakan ikon check out
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
