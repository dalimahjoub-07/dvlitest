import 'package:flutter/material.dart';

import '../vars.dart';
import 'logo.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            Container(
              height: 50,
              color: kmaint,
              child: Row(
                children: [
                  BackButton(
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Logo(
                      radus: 10,
                      fontsize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Main page',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: kmaint2,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Products',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.shopping_bag,
                color: kmaint2,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.settings_applications,
                color: kmaint2,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Solds',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.local_offer,
                color: kmaint2,
              ),
            ),
          ],
        );
  }
}