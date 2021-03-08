import 'package:dvlitn_sql/components/button.dart';
import 'package:dvlitn_sql/components/dont_have.dart';
import 'package:dvlitn_sql/components/txt_field.dart';
import 'package:flutter/material.dart';
import '../../vars.dart';
import '../home_page.dart';


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email, _password;

  Future getData() async {
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kmenu,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Login to your Account',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                TxtField(
                    onClick: (value) {
                      setState(() {
                        this._email = value;
                      });
                    },
                    hint: 'Email',
                    icon: Icons.email,
                    obscureText: false),
                TxtField(
                    onClick: (value) {
                      setState(() {
                        this._password = value;
                      });
                    },
                    hint: 'Password',
                    icon: Icons.lock,
                    obscureText: true),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Text1(),
                      Spacer(),
                      Button(
                        hint: 'Login',
                        onpress: () {
                          if (_globalKey.currentState.validate()) {
                            _globalKey.currentState.save();
                            print(_email);
                            print(_password);
                            Navigator.pushNamed(context, HomePage.id);
                          }
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
