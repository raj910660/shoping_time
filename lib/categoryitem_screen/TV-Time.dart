import 'package:flutter/material.dart';
import 'package:shoping_time/categoryitem_screen/TvTime_List.dart';

class TvTime extends StatelessWidget {
  const TvTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: const [
              TvTimeList(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD1K0ohvnxgaELwCjR-1VF9g1F7gz_Yj_fFQ&s',
              ),
              TvTimeList(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/d/d0/Zee_TV-2018.png',
              ),
              TvTimeList(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhl2qG6deqtj_YrFvZYRYcDQVA5VL4vPbzVQ&s',
              ),
              TvTimeList(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/en/d/d7/StarPlus_Logo.png',
              ),
              TvTimeList(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Sony_MAX.svg/1200px-Sony_MAX.svg.png',
              ),
              TvTimeList(
                imageUrl:
                    'https://banner2.cleanpng.com/20180625/jxt/kisspng-nickelodeon-the-nick-app-tv-everywhere-nick-play-nick-5b3189a5c459e6.8227224515299731578043.jpg',
              ),
              TvTimeList(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbzUPDEfJZ1XosjkWUfMC4MY-4h0B4LDKTNA&s',
              ),
              TvTimeList(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/2/28/Aaj_tak_logo.png',
              ),TvTimeList(
                imageUrl:
                    'https://static.wikia.nocookie.net/logopedia/images/e/e9/ABP_Asmita.png/revision/latest?cb=20201222101557',
              ),
              TvTimeList(
                imageUrl:
                'https://static.wikia.nocookie.net/logopedia/images/f/f4/Star_Sports_2013.png/revision/latest?cb=20240320075530',
              ),TvTimeList(
                imageUrl:
                'https://indiantelevision.com/sites/default/files/images/tv-images/2014/02/24/starsports_old.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
