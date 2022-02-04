import 'package:bbdaily/Widgets/slider.dart';
import 'package:flutter/material.dart';

import 'listDeal.dart';

class DealCard extends StatelessWidget {
  const DealCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OfferSlide(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deal of the day',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.75,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListCar(),
              )
            ],
          ),
        )
      ],
    );
  }
}
