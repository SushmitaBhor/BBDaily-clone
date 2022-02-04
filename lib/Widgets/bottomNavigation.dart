import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 24,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_outlined,
            ),
            label: 'Orders'),
        BottomNavigationBarItem(
            icon: SizedBox(
              width: 40,
              child: Stack(children: [
                const Icon(
                  Icons.account_balance_wallet_outlined,
                ),
                Positioned(
                  left: 14,
                  top: 0,
                  child: Container(
                    transform: Matrix4.rotationY(170),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child:
                        const Text('₹0', style: TextStyle(color: Colors.white)),
                  ),
                )
              ]),
            ),
            label: 'Wallet'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/question-11799.png',
            ),
            label: 'Help'),
      ],
    );
  }
}
