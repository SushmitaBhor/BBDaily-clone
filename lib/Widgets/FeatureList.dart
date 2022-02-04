import 'package:flutter/material.dart';

import 'Feature.dart';

class FeatureList extends StatelessWidget {
  FeatureList({Key key}) : super(key: key);
  List<String> myoffer = [
    'assets/images/offer/FeatureList/cp_cmc_fmcg-top_mumbai_400_170122.jpeg',
    'assets/images/offer/FeatureList/cp_fom_staples-top_mumbai_400_170122.jpeg',
    'assets/images/offer/FeatureList/download.webp',
    'assets/images/offer/FeatureList/download (1).webp',
    'assets/images/offer/FeatureList/download (2).webp',
    'assets/images/offer/FeatureList/download (3).webp',
    'assets/images/offer/FeatureList/download (4).webp',
    'assets/images/offer/FeatureList/download (5).webp',
  ];
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: GestureDetector(
                    onTap: () =>
                        Future.delayed(const Duration(milliseconds: 3), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const BrandGrid()));
                        }),
                    child: Image(
                      image: AssetImage(myoffer.first),
                    ))),
            separatorBuilder: (context, int index) =>
                const SizedBox(height: 10),
            itemCount: 3),
      );
}
