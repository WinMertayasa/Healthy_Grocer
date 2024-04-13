import 'package:aceh_food/pages/drawer.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers'),
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.transparent,
        child: DrawerScreen(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildOfferItem(
            image: 'assets/fruits_basket.jpeg',
            title: 'Fresh Fruits Basket',
            description: 'Get 20% off on assorted fruits basket',
          ),
          SizedBox(height: 20),
          _buildOfferItem(
            image: 'assets/organic_vegetables.jpeg',
            title: 'Organic Vegetables',
            description: 'Buy 1 get 1 free on organic vegetables',
          ),
          SizedBox(height: 20),
          _buildOfferItem(
            image: 'assets/whole_grains.jpeg',
            title: 'Whole Grains',
            description: 'Special discount on whole grains',
          ),
        ],
      ),
    );
  }

  Widget _buildOfferItem(
      {required String image,
      required String title,
      required String description}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
