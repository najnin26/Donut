import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeName;
  final String pancakePrice;
  final pancakeColor;
  final String imageName;

  final double borderRadius = 12;

  PancakeTile({
    Key? key,
    required this.pancakeName,
    required this.pancakePrice,
    required this.pancakeColor,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50], // Adjust the opacity as needed
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
                    color: pancakeColor[100], // Adjust the opacity as needed
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      color:pancakeColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Pancake picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(imageName),
            ),

            // Pancake name
            Text(
              pancakeName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),

            // Restaurant name (you can customize this)
            Text(
              'Pancake Paradise',
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
