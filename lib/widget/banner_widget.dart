import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class BannerWidhet extends StatelessWidget {
  const BannerWidhet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: 300.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        controller: CarouselController(),
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        pauseAutoPlayOnTouch: true,
        pauseAutoPlayOnManualNavigate: true,
        pauseAutoPlayInFiniteScroll: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        disableCenter: false,
        showIndicator: true,
        slideIndicator: const CircularSlideIndicator(),
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
