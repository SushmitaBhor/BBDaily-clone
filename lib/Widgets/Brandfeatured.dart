import 'package:bbdaily/Widgets/MilkGrid.dart';
import 'package:flutter/material.dart';

final List<String> milkList = [
  'assets/images/Featurebrand/40203553_5-potato-chips-american-style-cream-onion-flavour.jpeg',
  'assets/images/Featurebrand/20006689_16-dairy-milk-silk-bubbly-chocolate-bar.jpeg',
  'assets/images/Featurebrand/img.png',
  'assets/images/Featurebrand/img_1.png',
  'assets/images/Featurebrand/img_2.png',
  'assets/images/Featurebrand/img_3.png',
  'assets/images/Featurebrand/img_4.png',
  'assets/images/Featurebrand/img_5.png',
  'assets/images/Featurebrand/img_6.png',
  'assets/images/Featurebrand/img_7.png',
  'assets/images/Featurebrand/img_8.png',
  'assets/images/Featurebrand/img_9.png',
  'assets/images/milk/amulgold.jpeg',
  'assets/images/milk/gokul.jpeg',
  'assets/images/milk/nsm_0.png',
  'assets/images/milk/amulcow.jpeg',
  'assets/images/milk/provilac.jpeg',
  'assets/images/milk/woohoo.jpeg',
  'assets/images/milk/katraj.jpeg',
];

final List<String> milkPrice = [
  '20',
  '80',
  '280',
  '90',
  '75',
  '159.6',
  '109',
  '60',
  '260',
  '627',
  '435.34'
];
final List<String> qty = [
  '52 g Pouch',
  '18 g Pouch',
  '55 g',
  '200 g',
  '80 g',
  '7 L',
  '1 pc',
  '72 pc',
  '500 g Carton',
  '3 kg',
  '75 g',
  '500 ml Pouch',
  '1 L',
  '1 L',
  '500 ml'
];
final List<String> descMilk = [
  'Potato Chips - American Style Cream & Onion Flavour',
  'Cadbury Dairy Milk',
  'Cadbury Dairy Milk Fruit & Nut Chocolate - Imported',
  'Candyman Fantastik Mini Treats Chocolate Stick Wafer',
  'Aashirvaad Instant Meals - Mini Idli Sambhar Cup',
  'Princeware Pedal Plastic Dustbin / Garbage Bin - Mini, Round, Pink',
  'Asian Asian Mini Meal Hot Lunch Pack - Purple',
  "Johnson's baby Baby Skincare Wipes - Super Saver Pack",
  'Red Label Tea',
  'Pedigree Dry Dog Food - Chicken & Vegetables, For Adult Dogs',
  "Dettol Original Bathing Soap Bar - With 76% TFM, Provides Germ Protection,",
  'A2 Milk',
  "Cow's Milk"
];
final List<String> name = [
  'Lays',
  'Cadbury Dairy Milk Silk Bubbly Chocolate Bar',
  'Candyman',
  'Aashirvaad',
  'Princeware ',
  'Asian',
  "Johnson's baby",
  'Red Label',
  'Pedigree',
  'Dettol',
  'Gokul',
  'Indigau',
  'Farm Finest'
];
final ButtonStyle style = ElevatedButton.styleFrom(
  fixedSize: Size.fromWidth(165),
  primary: Colors.white,
  elevation: 0,
  side: BorderSide(color: Colors.black87.withOpacity(0.5), width: 0.2),
);

class BrandFeatured extends StatelessWidget {
  const BrandFeatured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.575,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: () => Future.delayed(
                      const Duration(
                        milliseconds: 3,
                      ), () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const FeatureGrid()));
                  }),
                  child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
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
                                    height: MediaQuery.of(context).size.height *
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
                                  maxLines: 1,
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
                            style: style,
                            onPressed: () {},
                            child: const Text(
                              'BUY ONCE',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ))
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                ),
            itemCount: 10),
      );
  Widget greenDot() => Positioned(
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
