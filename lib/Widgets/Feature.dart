import 'package:flutter/material.dart';

import 'PopularSub.dart';

class CardGrid {
  CardGrid(
      {this.title, this.icon, this.label, this.price, this.qty, this.desc});
  final String title, icon, label, price, qty, desc;
}

final List<CardGrid> choiceFeature = <CardGrid>[
  CardGrid(
    title: 'Cadbury Dairy Milk Silk Bubbly Chocolate Bar',
    icon:
        'assets/images/Featurebrand/20006689_16-dairy-milk-silk-bubbly-chocolate-bar.jpeg',
    price: '20',
    qty: '52 g Pouch',
    desc: 'Cadbury Dairy Milk Fruit & Nut Chocolate - Imported',
  ),
  CardGrid(
    title: 'Lays',
    icon:
        'assets/images/Featurebrand/40203553_5-potato-chips-american-style-cream-onion-flavour.jpeg',
    price: '80',
    qty: '18 g Pouch',
    desc: 'Potato Chips - American Style Cream & Onion Flavour',
  ),
  CardGrid(
    title: 'Cadbury Dairy Milk',
    icon: 'assets/images/Featurebrand/img.png',
    price: '280',
    qty: '55 g',
    desc: 'Cadbury Dairy Milk',
  ),
  CardGrid(
    title: 'Candyman',
    icon: 'assets/images/Featurebrand/img_1.png',
    price: '90',
    qty: '200 g',
    desc: 'Candyman Fantastik Mini Treats Chocolate Stick Wafer',
  ),
  CardGrid(
    title: 'Aashirvaad ',
    icon: 'assets/images/Featurebrand/img_2.png',
    price: '75',
    qty: '80 g',
    desc: 'Aashirvaad Instant Meals - Mini Idli Sambhar Cup',
  ),
  CardGrid(
    title: 'Princeware',
    icon: 'assets/images/Featurebrand/img_3.png',
    price: '159.6',
    qty: '7 L',
    desc: 'Princeware Pedal Plastic Dustbin / Garbage Bin - Mini, Round, Pink',
  ),
  CardGrid(
    title: "Philips",
    icon: 'assets/images/Featurebrand/img_4.png',
    price: '109',
    qty: '1 pc',
    desc: 'Philips compact fluorescent light bulbs (CFL)',
  ),
  CardGrid(
    title: "Asian",
    icon: 'assets/images/Featurebrand/img_5.png',
    price: '60',
    qty: '72 pc',
    desc: 'Asian Asian Mini Meal Hot Lunch Pack - Purple',
  ),
  CardGrid(
    title: "Johnson's baby",
    icon: 'assets/images/Featurebrand/img_6.png',
    price: '60',
    qty: '500 g Carton',
    desc: "Johnson's baby Baby Skincare Wipes - Super Saver Pack",
  ),
  CardGrid(
    title: 'Red Label',
    icon: 'assets/images/Featurebrand/img_7.png',
    price: '67',
    qty: '3 kg',
    desc: 'Red Label Tea',
  ),
];

class BrandGrid extends StatelessWidget {
  const BrandGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe daily'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2 / 3.3,
            children: List.generate(
                choiceFeature.length,
                (index) => Center(
                      child: PopularSub(
                        cardGrid: choiceFeature[index],
                      ),
                    ))),
      ),
    );
  }
}
