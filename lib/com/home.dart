import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shoping_time/categoryitem_screen/Fashion.dart';
import 'package:shoping_time/categoryitem_screen/Movies.dart';
import 'package:shoping_time/categoryitem_screen/TV-Time.dart';
import 'package:shoping_time/com/ServiceItem.dart';
import 'package:shoping_time/com/categoryslider.dart';
import 'package:shoping_time/com/slider.dart';

import 'CategoryItem.dart';
import 'SearchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? _bannerAd;


  // TODO: replace this test ad unit with your own ad unit.
  final adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  /// Loads a banner ad.
  void loadAd() {
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          setState(() {
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          // Dispose the ad here to free resources.
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void initState() {
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/one8.png'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search,
                size: 28, color: Colors.black),
            onPressed: () {
              Get.to(const SearchBars());
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.camera,
                size: 28, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.mic, size: 28, color: Colors.black),
          ),
        ],
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
                children: [
                  CategoryItem(
                    ontap: () {
                      Get.to(const Movies());
                    },
                    image: 'assets/movies.png',
                    text: 'Movies',
                  ),
                  CategoryItem(
                    ontap: () {
                      Get.to(Fashion());
                    },
                    image: 'assets/fashion.png',
                    text: 'Fashion',
                  ),
                  CategoryItem(
                    ontap: () {
                      Get.to(TvTime());
                    },
                    image: 'assets/tvtime.png',
                    text: 'TV-Time',
                  ),
                  CategoryItem(
                    ontap: () {},
                    image: 'assets/groceries.png',
                    text: 'Groceries',
                  ),
                  CategoryItem(
                    ontap: () {},
                    image: 'assets/electronics.png',
                    text: 'Electronics',
                  ),
                  CategoryItem(
                    ontap: () {},
                    image: 'assets/home.png',
                    text: 'Home',
                  ),
                  CategoryItem(
                    ontap: () {},
                    image: 'assets/mobiles.png',
                    text: 'Mobiles',
                  ),
                  CategoryItem(
                    ontap: () {},
                    image: 'assets/pharmacy.png',
                    text: 'Pharmacy',
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
              height: 1000,
              child: const categoryslider(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: SizedBox(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
