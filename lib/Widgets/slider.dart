import 'package:bbdaily/Widgets/slidersGrid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class OfferSlide extends StatelessWidget {
  const OfferSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final double height = MediaQuery.of(context).size.height;
      return CarouselSlider(
        options: CarouselOptions(
            height: height / 3,
            viewportFraction: 0.8,
            enlargeCenterPage: false,
            autoPlay: true),
        items: imgList.map((i) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () =>
                    Future.delayed(const Duration(milliseconds: 3), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SliderGrid()));
                }),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
