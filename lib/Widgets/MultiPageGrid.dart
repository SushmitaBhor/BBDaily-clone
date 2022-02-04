import 'package:bbdaily/Widgets/ListMilk.dart';
import 'package:bbdaily/screens/ViewAllMilk.dart';
import 'package:flutter/material.dart';

import 'SelectMilkGrid.dart';

class MultiPageGrid extends StatelessWidget {
  const MultiPageGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey.shade50,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              title: const Text('Beverages'),
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              bottom: TabBar(
                labelColor: Colors.black54,
                indicatorColor: Colors.lightGreen,
                tabs: [
                  Tab(
                    text: 'Tea & Coffee',
                  ),
                  Tab(text: 'Fruit Juices & Drinks'),
                  Tab(text: 'Energy & Soft Drinks'),
                ],
              ),
              actions: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 30,
                    ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15,
                padding: const EdgeInsets.all(18),
                childAspectRatio: 2 / 4,
                children: List.generate(
                    featureChoice.length,
                    (index) => SelectMilkGrid(
                          choice: featureChoice[index],
                        )),
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15,
                padding: const EdgeInsets.all(18),
                childAspectRatio: 2 / 4,
                children: List.generate(
                    featureChoice.length,
                    (index) => SelectMilkGrid(
                          choice: featureChoice[index],
                        )),
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15,
                padding: const EdgeInsets.all(18),
                childAspectRatio: 2 / 4,
                children: List.generate(
                    featureChoice.length,
                    (index) => SelectMilkGrid(
                          choice: featureChoice[index],
                        )),
              ),
            ],
          )),
    );
  }
}
