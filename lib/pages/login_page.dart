import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _createBackground(context),
          _loginForm(context),
        ],
      ),
    );
  }

  Widget _createBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final background = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0),
      ])),
    );

    final circles = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.white10,
      ),
    );

    return Stack(
      children: <Widget>[
        background,
        Positioned(child: circles, top: 90.0, left: 30.0),
        Positioned(child: circles, top: -40.0, right: 30.0),
        Positioned(child: circles, bottom: 30.0, right: -10.0),
        Positioned(child: circles, bottom: -50.0, left: -20.0),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox(
                width: double.infinity,
              ),
              Text(
                'Person',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 180.0,
          )),
          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0),
              ],
            ),
            child: Column(
              children: [
                Text('Go', style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  height: 40.0,
                ),
                _createEmailInput(),
                SizedBox(height: 20.0),
                _createPasswordInput(),
                SizedBox(height: 20.0),
                _createButtonInput()
              ],
            ),
          ),
          Text('Forgot password?'),
          SizedBox(height: 100.0),
        ],
      ),
    );
  }

  Widget _createEmailInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'example@example.com',
            icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
            labelText: 'Email'),
      ),
    );
  }

  Widget _createPasswordInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.deepPurple), labelText: 'Pwd'),
      ),
    );
  }

  Widget _createButtonInput() {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.deepPurple,
      textColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
        child: Text('Ingress'),
      ),
      onPressed: () {},
    );
  }
}
