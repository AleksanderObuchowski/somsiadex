import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Somsiadex',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Color(0x5b437f)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Stack(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        height: 500.0,
                        width: 500.0,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/logo.png'),
                            // ...
                          ),
                        ))
                    // ...
                    )
              ]),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Somsiadex",
                      style: new TextStyle(fontSize: 50.0, color: Colors.white))
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: new Container(
                                alignment: Alignment.center,
                                height: 70.0,
                                decoration: new BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                child: new Text(
                                  "Zaloguj Się",
                                  style: new TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                              ))))
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: new Container(
                            alignment: Alignment.center,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                color: Color(0xFF848484),
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: new Text(
                              "Zarejestruj się",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          )))
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF5B437F),
    );
  }
}
