import 'package:flutter/material.dart';
import 'package:donut/util/smoothie_tile.dart'; // Import your SmoothieTile widget

class SmoothieTab extends StatelessWidget {
  List smoothiesOnSale = [
    // [smoothieName, smoothiePrice, smoothieColor, imageName]
    ["Berry Smoothie", "6", Colors.blue, "lib/images/berry_smoothie.png"],
    ["Mango Smoothie", "5", Colors.red, "lib/images/mango_smoothie.png"],
    ["Green Smoothie", "7", Colors.purple, "lib/images/green_smoothie.png"],
    ["Strawberry Smoothie", "6", Colors.brown, "lib/images/smoothie.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieName: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
    );
  }
}
