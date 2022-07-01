import 'package:flutter/material.dart';

class vcladkiWidget extends StatelessWidget {
  vcladkiWidget({this.fhoto, this.vcladki_name, this.Fontsize});
  final String fhoto;
  final String vcladki_name;
  final double Fontsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(10.0),
      height: 125.0,
      width: 125.0,
      child: Column(
        children: [
          Image.asset(
            fhoto,
            width: 87.0,
            height: 85.0,
          ),
          Text(
            vcladki_name,
            style: TextStyle(fontSize: Fontsize),
          )
        ],
      ),
    );
  }
}
