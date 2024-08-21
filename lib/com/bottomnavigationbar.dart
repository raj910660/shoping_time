import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_time/com/add_product.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.home, size: 28)),
        IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search, size: 28)),
        IconButton(
            onPressed: () {
              Get.to(Addproduct());
            },
            icon: const Icon(CupertinoIcons.cart, size: 28)),
        IconButton(
            onPressed: () {
              Get.to(Myaccout());
            },
            icon: const Icon(CupertinoIcons.person, size: 28)),
      ],
    );
  }
}
