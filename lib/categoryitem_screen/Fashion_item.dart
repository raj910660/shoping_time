import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String discount;

  const ProductItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Image.network(height: 64,
            imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                if (discount != '')
                  Text(
                    discount,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
