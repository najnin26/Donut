import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaName;
  final String pizzaPrice;
  final pizzaColor;
  final String imageName;

  final double borderRadius = 12;

  PizzaTile({
    Key? key,
    required this.pizzaName,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50], // Adjust the opacity as needed
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100], // Adjust the opacity as needed
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      color: pizzaColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Pizza picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(imageName),
            ),

            // Pizza name
            Text(
              pizzaName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),

            // Restaurant name (you can customize this)
            Text(
              'Pizza Palace',
              style: TextStyle(color: Colors.grey[600]),
            ),

            // Love icon and add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),

                  // Plus button
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
