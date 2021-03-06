import 'package:flutter/material.dart';

import 'Widgets/bottomNavigation.dart';
import 'Widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeAppBar(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
