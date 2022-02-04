
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_test_app/city_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_filled),
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
        shadowColor: Colors.deepPurple,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(7)
            )
        ),
        actions:  [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            City_card(
              image: 'assets/img_4.jpeg',
              name: "Diego",
              // checked: ,
            ),
          ],
        ),
      ),
    );
  }
}
