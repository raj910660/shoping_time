import 'package:flutter/material.dart';
import 'package:shoping_time/categoryitem_screen/Movie_list.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                children: const [
                  movies(
                    image: 'assets/movie/bhediya.png',
                  ),
                  SizedBox(width: 20),
                  movies(
                    image: 'assets/movie/phir_hera_pheri.png',
                  ),
                  SizedBox(width: 20),
                  movies(
                    image: 'assets/movie/gangs_of_vashepur.png',
                  ),
                  SizedBox(width: 20),
                  movies(
                    image: 'assets/movie/motu_patlu.png',
                  ),
                  SizedBox(width: 20),
                  movies(
                    image: 'assets/movie/jumanji.png',
                  ),
                  SizedBox(width: 20),
                  movies(
                    image: 'assets/movie/singham_returns.png',
                  ),
                ],
              )),
          const SizedBox(height: 10),
          Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  moviess(
                    image: 'assets/movie/VIP_2.png',
                  ),
                  moviess(
                    image: 'assets/movie/jeresy.png',
                  ),
                  moviess(
                    image: 'assets/movie/world_famous.png',
                  ),
                  moviess(
                    image: 'assets/movie/the_pioneer.png',
                  ),
                  moviess(
                    image: 'assets/movie/maya.png',
                  ),
                  moviess(
                    image: 'assets/movie/luck_key.png',
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
