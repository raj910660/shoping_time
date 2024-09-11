import 'package:flutter/cupertino.dart';

class TvTimeList extends StatelessWidget {
  final String imageUrl;

  const TvTimeList({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        child: Column(

          children: [
            Image.network(imageUrl, width: 100, height: 100,),
          ],
        ),
      ),
    );
  }
}
