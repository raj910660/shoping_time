import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productRating;
  final String productReviews;
  final String buttonText;
  final Function onPressed;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productRating,
    required this.productReviews,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(productImage),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_half_outlined),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '$productRating ($productReviews)',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  productPrice,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => onPressed(),
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
