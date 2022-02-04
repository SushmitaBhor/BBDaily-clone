import 'package:bbdaily/Widgets/MultiPageGrid.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Categories',
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(
              choices.length,
              (index) => Center(child: SelectedCard(choice: choices[index])),
            ))
      ]),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = <Choice>[
  Choice(
      title: 'Baby Care',
      icon: 'assets/images/choice/bbdaily_SBC_BabyCare_1024X1024.png'),
  Choice(
      title: 'Bakery,Dairy & Eggs',
      icon: 'assets/images/choice/bbdaily_SBC_BakeryDairyEggs_1024X1024.png'),
  Choice(
      title: 'Beverages',
      icon: 'assets/images/choice/bbdaily_SBC_Beverages_1024X1024.png'),
  Choice(
      title: 'Breakfast, Snacks',
      icon: 'assets/images/choice/bbdaily_SBC_BreakfastSnacks_1024X1024.png'),
  Choice(
      title: 'Fruits',
      icon: 'assets/images/choice/bbdaily_SBC_Fruits_1024X1024.png'),
  Choice(
      title: 'Cleaning & Household',
      icon: 'assets/images/choice/bbdaily_SBC_HomeCare_1024X1024.png'),
  Choice(
      title: 'Milk',
      icon: 'assets/images/choice/bbdaily_SBC_Milk_1024X1024.png'),
  Choice(
      title: 'Beauty & Hygiene',
      icon: 'assets/images/choice/bbdaily_SBC_PersonalCare_1024X1024.png'),
  Choice(
      title: 'Pet Care',
      icon: 'assets/images/choice/bbdaily_SBC_PetCare_1024X1024.png'),
  Choice(
      title: 'Pooja Needs',
      icon: 'assets/images/choice/bbdaily_SBC_Pooja_1024X1024.png'),
  Choice(
      title: 'Foodgrains, Oil & Masala',
      icon: 'assets/images/choice/bbdaily_SBC_Staples_1024X1024.png'),
  Choice(
      title: 'Vegetables',
      icon: 'assets/images/choice/bbdaily_SBC_Vegetables_1024X1024.png'),
];

class SelectedCard extends StatelessWidget {
  const SelectedCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: MediaQuery.of(context).padding * 2,
      child: Card(
        color: Colors.white,
        child: GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => MultiPageGrid())),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Image.asset(
                choice.icon.toString(),
              )),
              Text(choice.title, textAlign: TextAlign.center, style: textStyle),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
