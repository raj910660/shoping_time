import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  const slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          Image.asset('assets/phone.png', height: 1000),
          Image.asset('assets/iphone.png', height: 1000),
          Image.asset('assets/Earbuds.png', height: 1000),
          Image.asset('assets/speaker.png', height: 1000),
          Image.asset('assets/Scooter.png', height: 1000),
          Image.asset('assets/Headphones.png', height: 1000),
          Image.asset('assets/shoes.png', height: 1000),
          Image.asset('assets/Cycles.png', height: 1000),
        ],
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          aspectRatio: 1,
        ),
      ),
    );
  }
}
