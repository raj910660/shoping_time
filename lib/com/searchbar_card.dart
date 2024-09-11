import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const ProductCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80,
            width: 80,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
