import 'package:donut/util/pizza_tile.dart';
import 'package:flutter/material.dart';
class PizzaTab extends StatelessWidget {
  List pizzasOnSale = [
    // [pizzaName, pizzaPrice, pizzaColor, imageName]
    ["Margherita Pizza", "12", Colors.blue, "lib/images/m_pizza.png"],
    ["Pepperoni Pizza", "14", Colors.red, "lib/images/p_pizza.png"],
    ["Vegetarian Pizza", "15", Colors.purple, "lib/images/v_pizza.png"],
    ["Hawaiian Pizza", "13", Colors.brown, "lib/images/h_pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaName: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
    );
  }
}
