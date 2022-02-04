import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class RechargeOffer extends StatefulWidget {
  const RechargeOffer({Key key, this.title = 'Recharge Offers'})
      : super(key: key);
  final String title;

  @override
  _RechargeOfferState createState() => _RechargeOfferState();
}

class _RechargeOfferState extends State<RechargeOffer> {
  bool isExpanded = false;
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
        body: ExpansionTileCard(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    )))
          ],
        ));
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
