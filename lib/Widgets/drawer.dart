import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hello'),
                  const SizedBox(height: 4),
                  const Text('Sushmita Bhor', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      Flexible(
                        child: Text(
                          '501A, AIROLI TOWER CHS PLOT NO-1 SCT-19, AIROLI,MUMBAI',
                        ),
                      ),
                    ],
                  )
                ],
              )),
          ListTile(
            onTap: () {},
            title: Row(
              children: [
                Image.asset(
                  'assets/images/user.png',
                  scale: 30,
                  color: Colors.black87,
                ),
                const SizedBox(width: 10),
                const Text('My Account'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(
                  Icons.calendar_today,
                  color: Colors.black54,
                ),
                SizedBox(width: 10),
                Text('My Subscriptions'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(
                  Icons.widgets_outlined,
                  color: Colors.black54,
                ),
                SizedBox(width: 10),
                Text('Shop By Category'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black54,
                ),
                SizedBox(width: 10),
                Text('Notifications'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(Icons.star_border, color: Colors.black54),
                SizedBox(width: 10),
                Text('Rate our app'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: [
                Image.asset(
                  'assets/images/question-11799.png',
                ),
                const SizedBox(width: 10),
                const Text('Need Help?'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(
                  Icons.share,
                  color: Colors.black54,
                ),
                SizedBox(width: 10),
                Text('Share'),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const [
                Icon(
                  Icons.logout,
                  color: Colors.black54,
                ),
                SizedBox(width: 10),
                Text('Logout'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
