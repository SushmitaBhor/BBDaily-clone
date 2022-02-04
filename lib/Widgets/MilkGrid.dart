import 'package:bbdaily/screens/ViewAllMilk.dart';
import 'package:flutter/material.dart';

class ChoiceGrid {
  const ChoiceGrid(
      {this.title, this.icon, this.label, this.price, this.qty, this.desc});
  final String title, icon, label, price, qty, desc;
}

const List<ChoiceGrid> choicesFeatured = <ChoiceGrid>[
  ChoiceGrid(
    title: 'Amul',
    icon: 'assets/images/milk/amulcow.jpeg',
    price: '24',
    qty: '500 ml Pouch',
    desc: 'Taaza',
  ),
  ChoiceGrid(
    title: 'Amul',
    icon: 'assets/images/milk/amulgold.jpeg',
    price: '25',
    qty: '500 ml Pouch',
    desc: 'Cow Milk',
  ),
  ChoiceGrid(
    title: 'Chitale',
    icon: 'assets/images/milk/chitale milk.jpeg',
    price: '30',
    qty: '500 ml Pouch',
    desc: 'Full Cream Milk',
  ),
  ChoiceGrid(
    title: 'Chitale',
    icon: 'assets/images/milk/chitalfull.jpeg',
    price: '30',
    qty: '500 ml Pouch',
    desc: 'Amul Gold',
  ),
  ChoiceGrid(
    title: 'Amul',
    icon: 'assets/images/milk/download.jpeg',
    price: '25',
    qty: '500 ml Pouch',
    desc: 'Buffalo Milk',
  ),
  ChoiceGrid(
    title: 'Katraj',
    icon: 'assets/images/milk/katraj.jpeg',
    price: '90',
    qty: '500 ml Pouch',
    desc: 'Cow Toned Milk',
  ),
  ChoiceGrid(
    title: 'Nandini',
    icon: 'assets/images/milk/nsm_0.png',
    price: '100',
    qty: '500 ml Pouch',
    desc: 'Amul Cow',
  ),
  ChoiceGrid(
    title: 'Provilac',
    icon: 'assets/images/milk/provilac.jpeg',
    price: '60',
    qty: '1 L Bottle',
    desc: 'A2 Desi Cow Milk',
  ),
  ChoiceGrid(
    title: 'woohoo',
    icon: 'assets/images/milk/woohoo.jpeg',
    price: '25',
    qty: '1 L',
    desc: 'A2 Desi Cow Milk',
  ),
  ChoiceGrid(
    title: 'Gokul',
    icon: 'assets/images/milk/gokul.jpeg',
    price: '40',
    qty: '500 ml Pouch',
    desc: 'Milk',
  ),
];
final ButtonStyle style = ElevatedButton.styleFrom(
  fixedSize: Size.fromWidth(165),
  primary: Colors.white,
  elevation: 0,
  side: BorderSide(color: Colors.black87.withOpacity(0.5), width: 0.2),
);

class FeatureListGrid extends StatelessWidget {
  const FeatureListGrid({Key key, this.choice}) : super(key: key);
  final ChoiceGrid choice;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        choice.icon,
                        height: 100,
                        fit: BoxFit.cover,
                      )),
                ),
                greenDot(),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                choice.title,
                maxLines: 1,
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 120,
                child: Text(
                  choice.desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 8),
              Text(choice.qty,
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 8),
              Text('₹' + choice.price,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 140,
                  child: Text(
                    'subscribe'.toUpperCase() + " " + '@ ₹' + choice.price,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: 13),
                  ),
                ),
              )
            ],
          ),
          ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text(
                'BUY ONCE',
                style: TextStyle(color: Colors.black, fontSize: 13),
              ))
        ],
      ),
    );
  }
}

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({Key key, this.choice}) : super(key: key);
  final ChoiceGrid choice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Free Milk'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15,
        padding: const EdgeInsets.all(18),
        childAspectRatio: 2 / 4,
        children: List.generate(
            choicesFeatured.length,
            (index) => FeatureListGrid(
                  choice: choicesFeatured[index],
                )),
      ),
    );
  }
}
