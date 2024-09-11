import 'package:flutter/material.dart';
import 'package:shoping_time/categoryitem_screen/Fashion_item.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text(
                'Shop Men',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.68,
                  shrinkWrap: true,
                  children:  [
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61CyEIcCLIL._SY879_.jpg',
                      title: 'kurta sets',
                      price: '200',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/71395oFkh1L._SX679_.jpg',
                      title: 'Western',
                      price: '400',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61qU5o6ZreL._SX679_.jpg',
                      title: 'Formal',
                      price: '2000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/717FoifGIrL._SY695_.jpg',
                      title: 'Shoes',
                      price: '5000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/711MeAgD3kL._SX679_.jpg',
                      title: 'Watches',
                      price: '1000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/71WvSloObLL._SX679_.jpg',
                      title: 'Eyewear',
                      price: '1000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/A1Y6yRUtHBL._SY695_.jpg',
                      title: 'Handbags',
                      price: '650',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/51fYWVVc-+L._SY300_SX300_.jpg',
                      title: 'Wallets',
                      price: '500',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61PGRfoJCZL._SY695_.jpg',
                      title: 'Jewellery',
                      price: '2000',
                      discount: '20% off',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Shop Women',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.68,
                  shrinkWrap: true,
                  children:  [
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61BploXV3CL._SX679_.jpg',
                      title: 'kurta sets',
                      price: '200',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/71SbZK1DhCL._SX679_.jpg',
                      title: 'Western',
                      price: '400',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61DgMGvWb7L._SY879_.jpg',
                      title: 'sarees',
                      price: '2000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61FVEqUK9qL._SX679_.jpg',
                      title: 'Activewear',
                      price: '500',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61U9kd3OCxL._SY695_.jpg',
                      title: 'Footwear',
                      price: '1000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61yl0ySSmPL._SY879_.jpg',
                      title: 'Shoes',
                      price: '1000',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/61Fa7wW9FvL._SY695_.jpg',
                      title: 'Handbags',
                      price: '650',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/71Zg0BSSpUL._SY879_.jpg',
                      title: 'Watches',
                      price: '500',
                      discount: '20% off',
                    ),
                    ProductItem(
                      imageUrl: 'https://m.media-amazon.com/images/I/719Wtyou2QL._SY695_.jpg',
                      title: 'Jewellery',
                      price: '2000',
                      discount: '20% off',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}