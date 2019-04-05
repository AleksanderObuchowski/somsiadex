import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      // ...
                    ),
                  ))
              // ...
              ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: new TextField(
                decoration: new InputDecoration(
                  labelText: "email",
                  filled: true,
                  fillColor: Colors.white,
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "Login",
                  filled: true,
                  fillColor: Colors.white,
                ),
              )),
          new Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Colors.green,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Zaloguj",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      )))
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFF5B437F),
    );
  }
}
