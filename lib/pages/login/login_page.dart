import 'package:dvlitn_sql/components/logo.dart';
import 'package:flutter/material.dart';
import '../../vars.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  static String id = '/Login';
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWith = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [kmaint3, kmaint4]),
        ),
        child: ListView(children: [
          SizedBox(
            height: screenHeight / 8,
            width: screenWith,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Logo(
                fontsize: 40,
                radus: 30,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: LoginForm(),
          ),
        ]),
      ),
    );
  }
}
