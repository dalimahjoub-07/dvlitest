import 'package:flutter/material.dart';

import '../vars.dart';

class ProdCard extends StatelessWidget {
  final String hint1;
  final VoidCallback onpress;
  final String img;
  ProdCard({this.hint1, this.onpress, this.img});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: GridTile(
          child: Image.asset(img),
          footer: Container(
            height: 30,
            color: kmaint.withOpacity(0.6),
            child: Center(
                child: Text(
              hint1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            )),
          ),
        ),
        onTap: onpress,
      ),
    );
  }
}
