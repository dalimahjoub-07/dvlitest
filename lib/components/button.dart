import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String hint;
  final VoidCallback onpress;
  Button({this.hint,this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: onpress,
          child: Text(
            hint,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
