import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? ontap;

  const  CategoryItem({Key? key, required this.image, required this.text,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Column(
        children: [
          Image.asset(image, width: 60, height: 60),
          SizedBox(height: 15),
          Text(
            text,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
