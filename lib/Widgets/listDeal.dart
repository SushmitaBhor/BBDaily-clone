import 'package:bbdaily/Widgets/Brandfeatured.dart';
import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class ListCar extends StatelessWidget {
  const ListCar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      fixedSize: Size.fromWidth(165),
      primary: Colors.white,
      elevation: 0,
      side: BorderSide(color: Colors.black87.withOpacity(0.5), width: 0.2),
    );
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

    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    contentTextStyle: const TextStyle(
                        fontFamily: 'OpenSans-Medium', color: Colors.black87),
                    titleTextStyle: const TextStyle(
                        fontFamily: 'OpenSans-Medium', color: Colors.black87),
                    scrollable: true,
                    title: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Stack(
                        children: [
                          Center(
                            child: Image.asset(
                              milkList[index],
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: greenDot()),
                          const Text(
                            'Organic',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    content: Column(
                      children: const [
                        Text('Description'),
                        Text(
                            "BB Royal Organic Wild Forest Honey is certified organic abd it is collected from the Himalayan forests of India which are free from pollution, pesticides and chemicals, It's pure, natural filtered organic honey")
                      ],
                    ),
                    actions: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: ElevatedButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              width: 200,
                              child: const Text(
                                'ok',
                                textAlign: TextAlign.center,
                              )),
                        ),
                      )
                    ],
                  );
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
                              dealList[index],
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
                          product[index],
                          maxLines: 1,
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          width: 120,
                          child: Text(
                            descproduct[index],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(quantity[index],
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12)),
                        const SizedBox(height: 8),
                        Text('₹' + price[index],
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
                                  '₹' +
                                  price[index],
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
        separatorBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
          );
        },
        itemCount: 10);
  }
}
