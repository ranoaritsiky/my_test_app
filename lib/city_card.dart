import 'dart:ffi';

import 'package:flutter/material.dart';

class City_card extends StatelessWidget {

  final String name;
  final String image;
  // final Bool checked;
  City_card({required this.name,required this.image});


  // const City_card({required this.name,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Container(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
                fit: BoxFit.cover,
                image:AssetImage(image),
                child: InkWell(
                  onTap: (){
                    print("tap tap send ");
                  },
                ),
            ),
            // Image.asset('assets/img_3.jpeg',
            //   fit: BoxFit.cover,
            // ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),
                        ],
                      )

                  ),
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
