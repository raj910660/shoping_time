import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shoping_time/com/home.dart';

void main() {
  runApp(const GetMaterialApp(
    home: SplashScreen(),
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
              Get.offAll(() => const HomePage());
            });
          },
        ),
      ),
    );
  }
}
