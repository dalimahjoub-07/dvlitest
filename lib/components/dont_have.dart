
import 'package:dvlitn_sql/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';

import '../vars.dart';

class Text1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, SignupPage.id);
        },
        child: Column(
          children: [
            Text(
              'Don\'t have an account ?',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              'Sign up',
              style: TextStyle(color: kmaint2, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
