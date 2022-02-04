import 'package:bbdaily/Widgets/MyOfferList.dart';
import 'package:bbdaily/screens/MyAccount.dart';
import 'package:flutter/material.dart';
import 'AllMilk.dart';
import 'FeatureList.dart';
import 'Brandfeatured.dart';
import 'choice_gird.dart';
import 'deal.dart';
import 'drawer.dart';
import 'exciting_offer.dart';

final List<String> imgList = [
  'assets/images/slider/bigcashback.jpeg',
  'assets/images/slider/freemilk.jpeg',
  'assets/images/slider/recharge.jpeg',
  'assets/images/slider/subscription.jpeg'
];
final List<String> dealList = [
  'assets/images/slider/DealOfDay/opensecret.jpeg',
  'assets/images/slider/DealOfDay/juice.jpeg',
  'assets/images/slider/DealOfDay/tasties-nacho-chips-jalapeno.jpeg',
  'assets/images/slider/DealOfDay/pistachios.jpeg',
  'assets/images/slider/DealOfDay/ferrero-rocher-chocolate.jpeg',
  'assets/images/slider/DealOfDay/samudra-biscuits-sugar-crakers.jpeg',
  'assets/images/slider/DealOfDay/cadbury-milk-chocolate-spread.jpeg',
  'assets/images/slider/DealOfDay/264983_1-lijjat-papad-jeera.jpeg',
  'assets/images/slider/DealOfDay/40142251_1-lotus-herbals-lip-lush-rosy-rose-blush-spf-20.jpeg',
  'assets/images/slider/DealOfDay/40021530_4-maybelline-new-york-hyperglossy-liquid-eyeliner-black.jpeg'
];
final List<String> product = [
  'OPEN SECRET',
  'Real',
  'Tasties',
  'Happilo',
  'Ferrero',
  'Samudra',
  'Cadbury',
  'Lijjat',
  'Lotus Herbals',
  'Maybelline New York',
];
final List<String> descproduct = [
  'Open Secret Choco Almond Nutty Cookies - With No Maida, Healthy, 12.5 g 2 pcs',
  'Fruit Power Juice - Masala Gauva',
  'Tasties Nacho Chips - Jalapeno, 60 g',
  'Happilo Pistachios - Roasted & Salted, Premium Californian, 2x200 g Multipack',
  'Ferrero Rocher - Chocolate, 16 pcs Box',
  'Samudra Biscuits - Sugar Crakers, 300 g',
  'Papad - Jeera',
  'Cadbury Milk Chocolate Spread, 400 g Bottle',
  'Lotus Herbals Lip Lush Rosy Rose Blush - SPF 20, 4 g',
  'Maybelline New York Hyperglossy Liquid Eyeliner - Black, 3 g',
];
final List<String> quantity = [
  '12.5 g 2 pcs',
  '1 L',
  '180 g',
  '60 g Pouch',
  '400 g',
  '1 L',
  '150 g',
  '60 g',
  '180 g',
  '150 g'
];
final List<String> price = [
  '35',
  '105',
  '110',
  '22.5',
  '60',
  '49',
  '55',
  '39',
  '89',
  '20',
  '100'
];

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(143.0),
          child: AppBar(
            foregroundColor: Colors.black,
            title: Image.asset(
              'assets/images/logo.png',
              height: 65,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Future.delayed(Duration.zero, () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyAccount()));
                    });
                  },
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 24,
                  ),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.3)),
                child: Row(
                  children: [
                    Image.asset('assets/images/search.png', width: 20),
                    const SizedBox(width: 10),
                    Text(
                      'Search 5000+ products',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DealCard(),
                const CategoriesCard(),
                ExcitingOffer(),
                const Milk(),
                FeatureList(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Featured Brand',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BrandFeatured(),
                ),
                BbList()
              ],
            ),
          ),
        ),
        drawer: const MyDrawer(),
      );
}
