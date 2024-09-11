import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:shoping_time/com/home.dart';
import 'package:shoping_time/com/menu_screen.dart';
import 'package:shoping_time/native_ad_example.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const GetMaterialApp(
    home:
    SplashScreen()
     // NativeExampleState(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          'assets/lottie/Animation - 1723810878369.json',
          onLoaded: (composition) {
            Future.delayed(composition.duration, () {
              Get.offAll(() => const MenuScreen());
            });
          },
        ),
      ),
    );
  }
}
