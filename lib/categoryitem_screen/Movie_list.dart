import 'package:flutter/cupertino.dart';

class movies extends StatelessWidget {
  final String image;

  const  movies({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Image.asset(image,height: 275,),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
class moviess extends StatelessWidget {
  final String image;

  const  moviess({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Image.asset(image,height: 200,),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
