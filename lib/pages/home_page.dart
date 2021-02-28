import 'package:dvlitn_sql/components/draw.dart';
import 'package:dvlitn_sql/components/logo.dart';
import 'package:dvlitn_sql/components/prodcard.dart';
import 'package:flutter/material.dart';
import '../vars.dart';

class HomePage extends StatefulWidget {
  static String id = '/Home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kmenu,
      appBar: (AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: kmaint2),
        ),
        flexibleSpace: Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Container(
              padding: EdgeInsets.only(top: 2),
              child: Logo(
                radus: 10,
                fontsize: 15,
              ),
            ),
            SizedBox(),
          ],
        ),
        backgroundColor: kmaint,
        centerTitle: true,
        elevation: 10,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        foregroundColor: kbox,
      )),
      drawer: Drawer(
        child: Draw(),
      ),
      body: Center(
        child: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            children: [
              ProdCard(
                img: 'images/PULL3.png',
                hint1: 'prod X',
                onpress: () {
                  print('good X');
                },
              ),
              ProdCard(
                img: 'images/PULL2.png',
                hint1: 'prod Y',
                onpress: () {
                  print('good Y');
                },
              ),
              ProdCard(
                img: 'images/PULL1.png',
                hint1: 'prod Z',
                onpress: () {
                  print('good Z');
                },
              ),
              ProdCard(
                img: 'images/PULL3.png',
                hint1: 'prod X',
                onpress: () {
                  print('good X');
                },
              ),
              ProdCard(
                img: 'images/PULL2.png',
                hint1: 'prod Y',
                onpress: () {
                  print('good Y');
                },
              ),
              ProdCard(
                img: 'images/PULL1.png',
                hint1: 'prod Z',
                onpress: () {
                  print('good Z');
                },
              ),
              ProdCard(
                img: 'images/PULL3.png',
                hint1: 'prod X',
                onpress: () {
                  print('good X');
                },
              ),
              ProdCard(
                img: 'images/PULL2.png',
                hint1: 'prod Y',
                onpress: () {
                  print('good Y');
                },
              ),
              ProdCard(
                img: 'images/PULL1.png',
                hint1: 'prod Z',
                onpress: () {
                  print('good Z');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
