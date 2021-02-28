import 'package:dvlitn_sql/vars.dart';
import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscureText;
  final Function onClick;
  // ignore: missing_return
  String _errorMessage(String str) {
    switch (hint) {
      case 'Name':
        return 'Name is empty !';
      case 'Email':
        return 'Email is empty !';
      case 'Password':
        return 'Password is empty !';
      case 'Confirm Password':
        return 'Password is empty !';
    }
  }

  TxtField({this.hint, this.icon, this.obscureText, this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        child: TextFormField(
          // ignore: missing_return
          validator: (value) {
            if (value.isEmpty) {
              return _errorMessage(hint);
            }
          },
          onSaved: onClick,
          obscureText: obscureText,
          cursorColor: kbox,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(
              icon,
              color: kbox,
            ),
            filled: true,
            fillColor: Colors.grey,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: kbox)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: kbox)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: kbox)),
          ),
        ),
      ),
    );
  }
}
