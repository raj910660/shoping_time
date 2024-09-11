import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_time/com/SearchBar.dart';
import 'package:shoping_time/com/add_product.dart';
import 'package:shoping_time/com/home.dart';
import 'package:shoping_time/com/myaccout.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<Widget> body = [HomePage(), SearchBars(), Addproduct(), Myaccout()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: body[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: Colors.black),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex=value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(CupertinoIcons.home, size: 28),
              ),
                BottomNavigationBarItem(

                  label: 'Search',
                  icon: Icon(CupertinoIcons.search, size: 28),
                ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(CupertinoIcons.cart, size: 28),
              ),
              BottomNavigationBarItem(
                label: 'Myaccout',
                icon: Icon(CupertinoIcons.person, size: 28),
              ),
            ]));
  }
}
