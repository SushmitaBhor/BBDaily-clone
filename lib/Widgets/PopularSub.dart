import 'package:bbdaily/screens/ViewAllMilk.dart';
import 'package:flutter/material.dart';

import 'Feature.dart';

class PopularSub extends StatelessWidget {
  const PopularSub({Key key, this.cardGrid}) : super(key: key);
  final CardGrid cardGrid;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      fixedSize: Size.fromWidth(165),
      primary: Colors.white,
      elevation: 0,
      side: BorderSide(color: Colors.black87.withOpacity(0.5), width: 0.2),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: SizedBox(
              height: 490,
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
                                cardGrid.icon,
                                height: 100,
                                fit: BoxFit.cover,
                              )),
                        ),
                        greenDot(),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardGrid.title,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          width: 120,
                          child: Text(
                            cardGrid.desc,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(cardGrid.qty,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12)),
                        const SizedBox(height: 8),
                        Text('₹' + cardGrid.price,
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
                                  cardGrid.price,
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
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
