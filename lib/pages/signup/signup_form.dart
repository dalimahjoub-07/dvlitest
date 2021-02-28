import 'package:dvlitn_sql/components/button.dart';
import 'package:dvlitn_sql/components/dont_have.dart';
import 'package:dvlitn_sql/components/txt_field.dart';
import 'package:flutter/material.dart';

import '../../vars.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email, _password, _name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kmenu2,
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
                    'Creat your Account',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                TxtField(
                    onClick: (value) {
                      setState(() {
                        this._name = value;
                      });
                    },
                    hint: 'Name',
                    icon: Icons.person,
                    obscureText: false),
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
                TxtField(
                    onClick: (value) {},
                    hint: 'Confirm Password',
                    icon: Icons.lock,
                    obscureText: true),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Text1(),
                      Spacer(),
                      Button(
                          hint: 'Creat',
                          onpress: () async {
                            if (_globalKey.currentState.validate()) {
                              _globalKey.currentState.save();
                              print(_name);
                              print(_email);
                              print(_password);
                            }
                          }),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
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
