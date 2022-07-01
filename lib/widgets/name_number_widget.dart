import 'package:flutter/material.dart';

class name_number_widget extends StatelessWidget {
  name_number_widget({this.name_text, this.numberSize});
  final String name_text;
  final double numberSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 50.0,
          child: Center(
              child: Text(
            name_text,
            style: TextStyle(fontSize: numberSize ?? 25.0),
          ))),
    );
  }
}
