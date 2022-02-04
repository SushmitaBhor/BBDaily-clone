import 'package:bbdaily/screens/ViewAllMilk.dart';
import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
};
MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);

class SelectMilkGrid extends StatelessWidget {
  const SelectMilkGrid({Key key, this.choice}) : super(key: key);
  final ChoiceGridFeature choice;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(165),
        side: BorderSide(
          color: Colors.black54,
        ),
        primary: Colors.white,
        elevation: 0,
        textStyle: TextStyle(color: Colors.black87));
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
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 120,
                child: Text(
                  choice.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
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
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
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
