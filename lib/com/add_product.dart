import 'package:flutter/material.dart';
import 'package:shoping_time/com/add_productcard.dart';

class Addproduct extends StatelessWidget {
  const Addproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ProductCard(
            productName: 'I phone',
            productImage: 'assets/mobiles.png',
            productPrice: '\$10000',
            productRating: '4.5',
            productReviews: '20 reviews',
            buttonText: 'Buy Now',
            onPressed: () {},
          ),
          ProductCard(
            productName: 'Scooter',
            productImage: 'assets/Scooter.png',
            productPrice: '\$2000',
            productRating: '4.0',
            productReviews: '15 reviews',
            buttonText: 'Buy Now',
            onPressed: () {},
          ), ProductCard(
            productName: 'Earbuds',
            productImage: 'assets/Earbuds.png',
            productPrice: '\$150',
            productRating: '4.0',
            productReviews: '15 reviews',
            buttonText: 'Buy Now',
            onPressed: () {},
          ),
          ProductCard(
            productName: 'Napkin Holder',
            productImage: 'assets/Napkinholder.png',
            productPrice: '\$300',
            productRating: '4.0',
            productReviews: '15 reviews',
            buttonText: 'Buy Now',
            onPressed: () {},
          ), ProductCard(
            productName: 'Speaker',
            productImage: 'assets/speaker.png',
            productPrice: '\$400',
            productRating: '4.0',
            productReviews: '15 reviews',
            buttonText: 'Buy Now',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
