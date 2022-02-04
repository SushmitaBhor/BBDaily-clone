import 'package:flutter/material.dart';

import 'ListMilk.dart';

class Milk extends StatelessWidget {
  const Milk({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const ListMilk(),
    );
  }
}
