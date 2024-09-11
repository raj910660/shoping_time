import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_time/com/searchbar_card.dart';

void main(){
  runApp(const MaterialApp(home: SearchBars(),));
}

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for products',
                    prefixIcon: const Icon(CupertinoIcons.search),
                    suffixIcon: const Icon(CupertinoIcons.mic),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  String title = '';
                  switch (index) {
                    case 0:
                      title = 'iphone';
                      break;
                    case 1:
                      title = 'Scooter';
                      break;
                    case 2:
                      title = 'Holder';
                      break;
                    case 3:
                      title = 'Cycles';
                      break;
                  }
                  return ListTile(
                    leading: const Icon(Icons.av_timer_sharp),
                    title: Text(title),
                  );
                },
              ),
              const Text(
                'Popular Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                children: const [
                  ProductCard(
                    title: 'iphone',
                    imagePath: 'assets/iphone.png',
                  ),
                  ProductCard(
                    title: 'boAt speaker',
                    imagePath: 'assets/speaker.png',
                  ),
                  ProductCard(
                    title: 'Shoes',
                    imagePath: 'assets/shoes.png',
                  ),
                  ProductCard(
                    title: 'Napkinholder',
                    imagePath: 'assets/Napkinholder.png',
                  ),
                  ProductCard(
                    title: 'Scooter',
                    imagePath: 'assets/Scooter.png',
                  ),
                  ProductCard(
                    title: 'Lamp',
                    imagePath: 'assets/Lamp.png',
                  ),
                  ProductCard(
                    title: 'Holder',
                    imagePath: 'assets/Holder.png',
                  ),
                  ProductCard(
                    title: 'Cycles',
                    imagePath: 'assets/Cycles.png',
                  ),
                  ProductCard(
                    title: 'electronics',
                    imagePath: 'assets/electronics.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}