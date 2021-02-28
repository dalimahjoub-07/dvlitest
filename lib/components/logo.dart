import 'package:flutter/material.dart';

import '../vars.dart';

class Logo extends StatelessWidget {
  final double radus;
  final double fontsize;
  Logo({this.fontsize, this.radus});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kmaint,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radus),
          bottomRight: Radius.circular(radus),
        ),
        border: Border.all(
          width: 1.5,
          color: (Colors.white38),
        ),
      ),
      padding: EdgeInsets.all(10),
      transform: Matrix4.rotationZ(0.1),
      child: Text('DevliTN Store',
          style: TextStyle(
            fontFamily: 'Rosso',
            fontSize: fontsize,
            color: kmaint2,
          )),
    );
  }
}
