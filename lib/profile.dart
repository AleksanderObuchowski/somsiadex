import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Row(children: <Widget>[
         Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        height: 500.0,
                        width: 500.0,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/profile.png'),
                            // ...
                          ),
                        ))
                    // ...
                    )

      ],)
    );}}