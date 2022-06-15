import 'package:flutter/material.dart';

class Str2 extends StatefulWidget {
  final String adamdynAty;
  Str2({this.adamdynAty});

  @override
  _Str2State createState() => _Str2State(adamdynAty);
}

class _Str2State extends State<Str2> {
  String adamdynAty;
  _Str2State(this.adamdynAty);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('тестировка'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 104, 245, 108)),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.blue,
                  padding: EdgeInsets.all(30.0),
                  child: Text('Аты: $adamdynAty'),
                ),
              ]),
        ));
  }
}
