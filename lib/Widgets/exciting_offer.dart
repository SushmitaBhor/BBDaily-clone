import 'package:bbdaily/Widgets/PrecautionPage.dart';
import 'package:bbdaily/Widgets/RechargeOffers.dart';
import 'package:flutter/material.dart';

class ExcitingOffer extends StatelessWidget {
  ExcitingOffer({
    Key key,
  }) : super(key: key);

  List<Widget> offerCard = [
    Builder(builder: (context) {
      return GestureDetector(
        onTap: () => Future.delayed(Duration(milliseconds: 3), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => RechargeOffer()));
        }),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xff1b3b8b),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exciting\nOffers!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'Check out some\nexciting offers only\nfor you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSans',
                          fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(165),
                        primary: Colors.blue,
                        elevation: 0,
                        side: BorderSide(
                            color: Colors.black87.withOpacity(0.4), width: 0.8),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Check Now',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }),
    Builder(builder: (context) {
      return GestureDetector(
        onTap: () => Future.delayed(Duration(milliseconds: 3), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MyHomePage()));
        }),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xffc61126),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your Safety is our proirity.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const Text.rich(TextSpan(
                    text: 'As always, all our deliveries are ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans-Medium',
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                    children: [
                      TextSpan(
                          text: 'contactless',
                          style:
                              TextStyle(fontFamily: "OpenSans", fontSize: 16))
                    ])),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      'Click to know more',
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      );
    }),
    Image.asset('assets/images/offer/eggs.jpeg'),
    Image.asset('assets/images/offer/bread.jpeg'),
  ];
  final ButtonStyle style = ElevatedButton.styleFrom(
    fixedSize: Size.fromWidth(165),
    primary: Colors.white,
    elevation: 0,
    side: BorderSide(color: Colors.black87.withOpacity(0.4), width: 0.8),
  );
  @override
  Widget build(BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: offerCard.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(5), child: offerCard[index]);
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 10),
      ));
}
