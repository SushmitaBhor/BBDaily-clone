import 'package:flutter/material.dart';

class SlideGridFeature {
  const SlideGridFeature(
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

const List<SlideGridFeature> slideChoice = <SlideGridFeature>[
  SlideGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/amulcow.jpeg',
    rate: '24',
    quantity: '500 ml Pouch',
    description: 'Taaza',
  ),
  SlideGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/amulgold.jpeg',
    rate: '25',
    quantity: '500 ml Pouch',
    description: 'Cow Milk',
  ),
  SlideGridFeature(
    label: 'Chitale',
    imgurl: 'assets/images/milk/chitale milk.jpeg',
    rate: '30',
    quantity: '500 ml Pouch',
    description: 'Full Cream Milk',
  ),
  SlideGridFeature(
    label: 'Chitale',
    imgurl: 'assets/images/milk/chitalfull.jpeg',
    rate: '30',
    quantity: '500 ml Pouch',
    description: 'Amul Gold',
  ),
  SlideGridFeature(
    label: 'Amul',
    imgurl: 'assets/images/milk/download.jpeg',
    rate: '25',
    quantity: '500 ml Pouch',
    description: 'Buffalo Milk',
  ),
  SlideGridFeature(
    label: 'Katraj',
    imgurl: 'assets/images/milk/katraj.jpeg',
    rate: '90',
    quantity: '500 ml Pouch',
    description: 'Cow Toned Milk',
  ),
  SlideGridFeature(
    label: 'Nandini',
    imgurl: 'assets/images/milk/nsm_0.png',
    rate: '100',
    quantity: '500 ml Pouch',
    description: 'Amul Cow',
  ),
  SlideGridFeature(
    label: 'Provilac',
    imgurl: 'assets/images/milk/provilac.jpeg',
    rate: '60',
    quantity: '1 L Bottle',
    description: 'A2 Desi Cow Milk',
  ),
  SlideGridFeature(
    label: 'woohoo',
    imgurl: 'assets/images/milk/woohoo.jpeg',
    rate: '25',
    quantity: '1 L',
    description: 'A2 Desi Cow Milk',
  ),
  SlideGridFeature(
    label: 'Gokul',
    imgurl: 'assets/images/milk/gokul.jpeg',
    rate: '40',
    quantity: '500 ml Pouch',
    description: 'Milk',
  ),
];
final ButtonStyle style = ElevatedButton.styleFrom(
  fixedSize: Size.fromWidth(165),
  primary: Colors.white,
  elevation: 0,
  side: BorderSide(color: Colors.black87.withOpacity(0.4), width: 0.8),
);

class SliderGrid extends StatelessWidget {
  const SliderGrid({Key key}) : super(key: key);

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
            slideChoice.length,
            (index) => SelectSlideGrid(
                  choice: slideChoice[index],
                )),
      ),
    );
  }
}

class SelectSlideGrid extends StatelessWidget {
  const SelectSlideGrid({Key key, this.choice}) : super(key: key);
  final SlideGridFeature choice;
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
                        choice.imgurl,
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
                choice.label,
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans-Medium'),
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 120,
                child: Text(choice.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'OpenSans-Medium')),
              ),
              const SizedBox(height: 8),
              Text(choice.quantity,
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 8),
              Text('₹' + choice.rate,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 140,
                  child: Text(
                    'subscribe'.toUpperCase() + " " + '@ ₹' + choice.rate,
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
