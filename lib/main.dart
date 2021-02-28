import 'package:dvlitn_sql/pages/login/login_page.dart';
import 'package:dvlitn_sql/pages/home_page.dart';
import 'package:dvlitn_sql/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';

import 'vars.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: kmaint),
      debugShowCheckedModeBanner: false,
      initialRoute: '/Home',
      routes: {
        '/Login': (context) => LoginPage(),
        '/Signup': (context) => SignupPage(),
        '/Home': (context) => HomePage(),
      },
    );
  }
}
