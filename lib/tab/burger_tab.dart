import 'package:flutter/material.dart';
import 'package:donut/util/burger_tile.dart'; // Import your BurgerTile widget

class BurgerTab extends StatelessWidget {
  List burgersOnSale = [
    // [ burgerName, burgerPrice, burgerColor, imageName ]
    ["Burger", "10", Colors.blue, "lib/images/burger.png"],
    ["Classic Burger", "8", Colors.red, "lib/images/classic_burger.png"],
    ["Veggie Burger", "12", Colors.purple, "lib/images/veggie_burger.png"],
    ["Cheeseburger", "9", Colors.brown, "lib/images/cheeseburger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
    );
  }
}
