import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/Home.dart';
import 'package:x_code_environment/pages/about_us.dart';
import 'package:x_code_environment/pages/wasteManagement.dart';
import 'package:x_code_environment/pages/waterManagement.dart';
import 'package:x_code_environment/services/solution.dart';

import '../pages/deforestation.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(''),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/img_3.png",
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
              ),accountEmail: null,
            ),
            ListTile(
              title: Text('Home'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home())),
            ),
            Divider(
              indent: 0,
              endIndent: 0,
              thickness: 2,
            ),
            ListTile(
              title: Text('Forest Conservation'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Deforestation())),
            ),
            ListTile(
                title: Text('Water Management'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WaterManagement()))),
            ListTile(
              title: Text('Waste Management'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WasteManagement())),
            ),
            Divider(
              indent: 0,
              endIndent: 0,
              thickness: 2,
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUs())),
            ),
          ],
        ),
      ),
    );
  }
}
