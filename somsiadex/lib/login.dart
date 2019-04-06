import 'package:flutter/material.dart';
import 'profile.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';
import 'dart:convert';

var httpClient = new http.Client();
var url = 'http://192.168.62.147:8000/collection/12'; //or https
var data = {"email":"yyyy@xx.com","name":"xyz"};

postData3()  async  {
print("xd");
var response = await http.get((url));
print(response.statusCode);
}




postData2(){
  http.post(url, body: json.encode({'test': 'value'})).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}


postData() async {
  print("funkcja");
Uri apiUrl = Uri.parse(url);
HttpClientRequest request = await new HttpClient().getUrl(apiUrl);
HttpClientResponse response = await request.close();
Stream resStream = response.transform(utf8.decoder);
await for (var data in resStream){
  print(data);
}
}

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
                      child: GestureDetector(
                          onTap: () {
                                  postData3();
                                  //Navigator.pushNamed(context, '/profile');
                              },
                     
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
                      ))))
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFF5B437F),
    );
  }
}
