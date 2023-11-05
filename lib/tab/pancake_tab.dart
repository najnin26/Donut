import 'package:donut/util/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  List pancakesOnSale = [
    // [pancakeName, pancakePrice, pancakeColor, imageName]
    ["Blueberry Pancake", "6", Colors.blue, "lib/images/blueberry_pancake.png"],
    ["Chocolate Pancake", "5", Colors.red, "lib/images/chocolate_pancake.png"],
    ["Strawberry Pancake", "7", Colors.purple, "lib/images/strawberry_pancake.png"],
    ["Banana Pancake", "6", Colors.brown, "lib/images/banana_pancake.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeName: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
    );
  }
}
