import 'package:flutter/cupertino.dart';

class ServiceItem extends StatelessWidget {
  final String image;
  final String text;

  const ServiceItem({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 50, height: 50),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}