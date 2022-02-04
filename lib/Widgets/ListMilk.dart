import 'package:bbdaily/screens/ViewAllMilk.dart';
import 'package:flutter/material.dart';

final List<String> milkList = [
  'assets/images/milk/download.jpeg',
  'assets/images/milk/chitale milk.jpeg',
  'assets/images/milk/chitalfull.jpeg',
  'assets/images/milk/amulgold.jpeg',
  'assets/images/milk/gokul.jpeg',
  'assets/images/milk/nsm_0.png',
  'assets/images/milk/amulcow.jpeg',
  'assets/images/milk/provilac.jpeg',
  'assets/images/milk/woohoo.jpeg',
  'assets/images/milk/katraj.jpeg',
];

final List<String> milkPrice = [
  '24',
  '25',
  '30',
  '30',
  '30',
  '24',
  '25',
  '90',
  '100',
  '25',
  '40'
];
final List<String> qty = [
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '1 L Bottle',
  '1 L',
  '500 ml Pouch',
  '500 ml Pouch',
  '500 ml Pouch',
  '1 L',
  '1 L',
  '500 ml'
];
final List<String> descMilk = [
  'Taaza',
  'Cow Milk',
  'Full Cream Milk',
  'Amul Gold',
  'Buffalo Milk',
  'Cow Toned Milk',
  'Amul Cow',
  'A2 Desi Cow Milk',
  'A2 Desi Cow Milk',
  'Milk',
  'Cow Milk',
  'A2 Milk',
  "Cow's Milk"
];
final List<String> name = [
  'Amul',
  'Chitale',
  'Chitale',
  'Amul',
  'Gokul',
  'Nandini',
  'Amul',
  'Provilac',
  'woohoo',
  'Katraj',
  'Gokul',
  'Indigau',
  'Farm Finest'
];

class ListMilk extends StatelessWidget {
  const ListMilk({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.transparent,
      elevation: 0,
    );
    final ButtonStyle style_buy = ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 0,
        fixedSize: Size.fromWidth(200),
        side: BorderSide(color: Colors.grey, width: 0.6));
    Widget greenDot() {
      return Positioned(
        bottom: 0,
        left: 0,
        child: Stack(
          children: [
            Container(
              height: 15,
              width: 15,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('All Milk'),
              ElevatedButton(
                  style: style,
                  onPressed: () => Future.delayed(
                          const Duration(
                            milliseconds: 3,
                          ), () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ViewAll()));
                      }),
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.green),
                  ))
            ],
          ),
          Expanded(
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
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
                                        milkList[index],
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.225,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  greenDot(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name[index],
                                    maxLines: 1,
                                  ),
                                  const SizedBox(height: 3),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      descMilk[index],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(qty[index],
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  const SizedBox(height: 8),
                                  Text('₹' + milkPrice[index],
                                      style: const TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13)),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: SizedBox(
                                      width: 140,
                                      child: Text(
                                        'subscribe'.toUpperCase() +
                                            " " +
                                            '@ ₹' +
                                            milkPrice[index],
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
                            ),
                            ElevatedButton(
                                style: style_buy,
                                onPressed: () {},
                                child: const Text(
                                  'BUY ONCE',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                    );
                  },
                  itemCount: 10)),
        ],
      ),
    );
  }
}
