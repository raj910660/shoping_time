import 'package:flutter/material.dart';
import 'package:shoping_time/com/ServiceItem.dart';
import 'package:shoping_time/com/bottomnavigationbar.dart';
import 'package:shoping_time/com/categoryslider.dart';
import 'package:shoping_time/com/slider.dart';

import 'CategoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade200,
        // leading: Icon(Icons.menu, color: Colors.black),
        title: const SearchBar(
          hintText: 'Search Amazon.in',
          leading: Icon(Icons.search, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic, color: Colors.black),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Text('Amazon'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Your Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Buy Again'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Customer Service'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.location_pin, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Deliver to Raj - Surat 395004',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  CategoryItem(
                    image: 'assets/prime_day.png',
                    text: 'prime_day',
                  ),
                  CategoryItem(
                    image: 'assets/prime.png',
                    text: 'Prime',
                  ),
                  CategoryItem(
                    image: 'assets/deals.png',
                    text: 'Deals',
                  ),
                  CategoryItem(
                    image: 'assets/fashion.png',
                    text: 'Fashion',
                  ),
                  CategoryItem(
                    image: 'assets/tvtime.png',
                    text: 'TV-Time',
                  ),
                  CategoryItem(
                    image: 'assets/groceries.png',
                    text: 'Groceries',
                  ),
                  CategoryItem(
                    image: 'assets/electronics.png',
                    text: 'Electronics',
                  ),
                  CategoryItem(
                    image: 'assets/home.png',
                    text: 'Home',
                  ),
                  CategoryItem(
                    image: 'assets/mobiles.png',
                    text: 'Mobiles',
                  ),
                  CategoryItem(
                    image: 'assets/pharmacy.png',
                    text: 'Pharmacy',
                  ),
                  CategoryItem(
                    image: 'assets/movies.png',
                    text: 'Movies',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(15),
              height: 500,
              child: const slider(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                child: Column(
                  children: [
                    Image.asset('assets/bennar.png'),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(height: 20),
                                ServiceItem(
                                  image: 'assets/pay.png',
                                  text: 'Amazon Pay',
                                ),
                                SizedBox(width: 20),
                                ServiceItem(
                                  image: 'assets/send_money.png',
                                  text: 'Send Money',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                ServiceItem(
                                  image: 'assets/scan_qr.png',
                                  text: 'Scan any QR',
                                ),
                                SizedBox(width: 20),
                                ServiceItem(
                                  image: 'assets/recharge.png',
                                  text: 'Mobile Recharge',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: SizedBox(
                        height: 240,
                        width: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/iphone.png'),
                              const SizedBox(height: 10),
                              const Text('I Phone'),
                            ],
                          ),
                        ),
                      ))),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: SizedBox(
                        height: 240,
                        width: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/groceries.png'),
                              const SizedBox(height: 10),
                              const Text('Groceries'),
                            ],
                          ),
                        ),
                      ))),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: SizedBox(
                        height: 240,
                        width: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/home.png'),
                              const SizedBox(height: 10),
                              const Text('Kitchen items'),
                            ],
                          ),
                        ),
                      ))),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: SizedBox(
                        height: 240,
                        width: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/speaker.png'),
                              const SizedBox(height: 10),
                              const Text('Speaker'),
                            ],
                          ),
                        ),
                      ))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(15),
              height: 1400,
              child: const categoryslider(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deals for you',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              color: Colors.white),
          child: CustomNavBar()),
    );
  }
}
