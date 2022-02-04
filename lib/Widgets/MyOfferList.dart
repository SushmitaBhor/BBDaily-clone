import 'package:flutter/material.dart';

class BbList extends StatelessWidget {
  BbList({Key key}) : super(key: key);
  List<String> myoffer = [
    'assets/images/OilAndGheeOffer/img.png',
    'assets/images/OilAndGheeOffer/img_1.png',
    'assets/images/OilAndGheeOffer/img_2.png',
    'assets/images/OilAndGheeOffer/img_3.png',
    'assets/images/OilAndGheeOffer/img_4.png',
    'assets/images/OilAndGheeOffer/img_5.png',
    'assets/images/OilAndGheeOffer/img_6.png',
  ];
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(myoffer[index])),
            separatorBuilder: (context, int index) =>
                const SizedBox(height: 10),
            itemCount: myoffer.length),
      );
}
