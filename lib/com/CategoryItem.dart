import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String text;

  const CategoryItem({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 60, height: 60),
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}