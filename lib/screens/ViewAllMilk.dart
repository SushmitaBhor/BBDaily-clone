import 'package:bbdaily/Widgets/SelectMilkGrid.dart';
import 'package:flutter/material.dart';

class ChoiceGridFeature {
  const ChoiceGridFeature(
      {this.label, this.imgurl, this.rate, this.quantity, this.description});
  final String label, imgurl, rate, quantity, description;
}

Widget greenDot() {
  return Positioned(
    bottom: 0,
    left: 0,
    child: Stack(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
        ),
        Positioned(
          left: 2,
          top: 2,
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
          ),
        ),
      ],
    ),
  );
}

const List<ChoiceGridFeature> featureChoice = <ChoiceGridFeature>[
  ChoiceGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/amulcow.jpeg',
    rate: '24',
    quantity: '500 ml Pouch',
    description: 'Taaza',
  ),
  ChoiceGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/amulgold.jpeg',
    rate: '25',
    quantity: '500 ml Pouch',
    description: 'Cow Milk',
  ),
  ChoiceGridFeature(
    label: 'Chitale',
    imgurl: 'assets/images/milk/chitale milk.jpeg',
    rate: '30',
    quantity: '500 ml Pouch',
    description: 'Full Cream Milk',
  ),
  ChoiceGridFeature(
    label: 'Chitale',
    imgurl: 'assets/images/milk/chitalfull.jpeg',
    rate: '30',
    quantity: '500 ml Pouch',
    description: 'Amul Gold',
  ),
  ChoiceGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/download.jpeg',
    rate: '25',
    quantity: '500 ml Pouch',
    description: 'Buffalo Milk',
  ),
  ChoiceGridFeature(
    label: 'Katraj',
    imgurl: 'assets/images/milk/katraj.jpeg',
    rate: '90',
    quantity: '500 ml Pouch',
    description: 'Cow Toned Milk',
  ),
  ChoiceGridFeature(
    label: 'Nandini',
    imgurl: 'assets/images/milk/nsm_0.png',
    rate: '100',
    quantity: '500 ml Pouch',
    description: 'Amul Cow',
  ),
  ChoiceGridFeature(
    label: 'Provilac',
    imgurl: 'assets/images/milk/provilac.jpeg',
    rate: '60',
    quantity: '1 L Bottle',
    description: 'A2 Desi Cow Milk',
  ),
  ChoiceGridFeature(
    label: 'woohoo',
    imgurl: 'assets/images/milk/woohoo.jpeg',
    rate: '25',
    quantity: '1 L',
    description: 'A2 Desi Cow Milk',
  ),
  ChoiceGridFeature(
    label: 'Gokul',
    imgurl: 'assets/images/milk/gokul.jpeg',
    rate: '40',
    quantity: '500 ml Pouch',
    description: 'Milk',
  ),
];

class ViewAll extends StatelessWidget {
  const ViewAll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('ALL MILK'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15,
          padding: const EdgeInsets.all(18),
          childAspectRatio: 2 / 4,
          children: List.generate(
              featureChoice.length,
              (index) => SelectMilkGrid(
                    choice: featureChoice[index],
                  )),
        ));
  }
}
