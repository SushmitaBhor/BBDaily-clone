import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title = 'Safety_Precautions'})
      : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;
  Color parafirstcolor = Colors.blueAccent;
  Color parasecondcolor = Color(0xff70b8e8);
  Color parathirdcolor = Color(0xff71dcea);
  Color parafourthcolor = Color(0xff71eaa7);
  Color parafifthcolor = Color(0xff71ea81);
  Color parashadowcolor = Color(0xff0d7c90);
  String firsttext =
      'All warehouses and hubs are being sanitized\nfrequently with appropriate disinfectants to\nensure all stored products are SAFE.';
  String secondtext =
      'All our warehouse employees are being\n checked for symptoms, and are thermally\nscanned before entering our warehouses.\nAll warehouse employees use disposable face masks and gloves.';
  String thirdtext =
      'Before preceding for delivery, our delivery\nsuperheroes are being checked for any\nsymptoms. Any delivery executives failing\nthese checks are not allowed to proceed for delivery. ';

  String fourthtext =
      'All delivery executives are equipped with\ndisposable gloves which will be changed\nafter every delivery.';
  String fifthtext =
      'All delivery executives will maintain social distance at customer locations and have been instructed not to enter your home. They will deliver the products just outside your door/bag or leave it at the lobby.';
  String hinttext =
      'Kindly ensure sufficient wallet balance before placing your order.Recharge through any of the below payment options from the recharge section in the app.';

  String appreciate =
      '''We take this opportunity to appreciate our delivery superheroes for going above and beyond for everyone during this time.\nOn behalf of everyone at bbdaily,we'd like to share our best wishes with you and your family. Stay safe and healthy during this time.''';
  @override
  Widget build(BuildContext context) {
    return expansionScaffold();
  }

  Scaffold expansionScaffold() {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title ?? 'default value'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            centerTitle: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  ExpansionTileCard(
                    borderRadius: BorderRadius.zero,
                    leading: leadingicondata(),
                    title: Image.asset('assets/images/logo.png', height: 100),
                    trailing: const SizedBox(),
                    shadowColor: Colors.white,
                    elevation: 0,
                    onExpansionChanged: (bool expanding) =>
                        setState(() => this.isExpanded = expanding),
                    children: const <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 18),
                              )))
                    ],
                  ),
                ],
              ),
              const Text(
                'Precautionary Measures',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              dearcustomer(),
              const SizedBox(height: 20),
              fivemeasures(),
              const SizedBox(height: 20),
              wallethelptext(hinttext, TextAlign.center),
              const SizedBox(height: 10),
              walletlogo(),
              const SizedBox(height: 10),
              paycontainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wallethelptext(appreciate, TextAlign.justify),
                    const SizedBox(height: 10),
                    const Text('Thank you for choosing bbdaily',
                        style: TextStyle(color: Colors.red)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_rounded,
                                size: 20,
                                color: Colors.red,
                              ),
                              SizedBox(width: 5),
                              Text.rich(TextSpan(
                                  text: 'go back ',
                                  style: TextStyle(color: Colors.red),
                                  children: [
                                    TextSpan(
                                        text: 'to homePage',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black))
                                  ])),
                            ],
                          ),
                          Image.asset('assets/images/vegetable_82806697.jpeg',
                              height: 100)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget paycontainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          payoption('assets/images/icons8-banking-64.png', 'Net banking', ''),
          payoption('assets/images/icons8-payment-64.png', 'UPI',
              'Google Pay,Paytm UPI and others'),
          payoption('assets/images/icons8-wallet-64.png', 'Mobile wallet',
              'Paytm, PayPal, Mobikwik, Freecharge, Ola Money'),
        ],
      ),
    );
  }

  Widget payoption(String path, String label, String sublabel) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffbfe890))),
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.25,
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Image.asset(path),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 12)),
          SizedBox(height: 4),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text(sublabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, color: Colors.black45)),
            ),
          )
        ],
      ),
    );
  }

  Text wallethelptext(String hint, TextAlign align) {
    return Text(
      hint,
      textAlign: align,
    );
  }

  Row walletlogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/paytm.png',
          height: 40,
        ),
        Image.asset(
          'assets/images/mobikwik.png',
          height: 40,
        )
      ],
    );
  }

  Column fivemeasures() {
    return Column(
      children: [
        cardrow('1', firsttext, parafirstcolor, parafirstcolor, parashadowcolor,
            Colors.white),
        cardrow('2', secondtext, parasecondcolor, parafirstcolor,
            parashadowcolor, Colors.white),
        cardrow('3', thirdtext, parathirdcolor, parasecondcolor,
            parashadowcolor, Colors.black),
        cardrow('4', fourthtext, parafourthcolor, parasecondcolor,
            parashadowcolor, Colors.black),
        cardrow('5', fifthtext, parafifthcolor, parasecondcolor,
            parashadowcolor, Colors.black),
      ],
    );
  }

  Widget cardrow(String num, String para, Color paracolor, Color dotcolor,
      Color shadowcolor, Color textcolor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            color: Colors.white,
            padding: EdgeInsets.all(18),
            child: Text(
              num,
              style: TextStyle(
                  fontSize: 62,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas_Neue'),
            )),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: paracolor, boxShadow: [
                BoxShadow(
                  color: shadowcolor,
                  blurRadius: 8,
                  spreadRadius: 0,
                ),
              ]),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.2,
                    padding: const EdgeInsets.only(
                        left: 40, top: 20, bottom: 20, right: 30),
                    child: Text(para, style: TextStyle(color: textcolor)),
                  ),
                  Positioned(
                    top: 20,
                    right: 310,
                    child: Container(
                      child: Stack(children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 60,
                        ),
                        Positioned(
                            left: 21,
                            top: 25,
                            child: Icon(
                              Icons.circle,
                              color: dotcolor,
                              size: 10,
                            ))
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget triangledot(Color mycolor) {
    return Positioned(
      top: 20,
      right: 310,
      child: Container(
        child: Stack(children: [
          Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 60,
          ),
          Positioned(
              left: 21,
              top: 25,
              child: Icon(
                Icons.circle,
                color: mycolor,
                size: 10,
              ))
        ]),
      ),
    );
  }

  Container dearcustomer() {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      color: Color(0xffa4e549),
      child: Column(
        children: [
          Text('Dear Customer,',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18)),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              '''At bbdaily, we have been closely monitoring the prevailing situations. Based on this, we have initiated precautionary measures through heightened safety protocols across all our offices, warehouses and delivery hubs, pan-India.\n\t\tThe specific actions we have undertaken are mentioned below. These stem from a need for complete caution and paramount importance has been accorded to the safety of all.''',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  Material leadingicondata() {
    return Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: isExpanded ? Colors.red : Colors.black45),
            borderRadius: BorderRadius.circular(5)),
        child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu, color: Colors.black)));
  }
}
