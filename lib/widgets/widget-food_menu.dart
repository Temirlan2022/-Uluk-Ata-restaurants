import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
  FoodMenu({this.sostav, this.image});
  final String sostav;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Expanded(
              child: Image.asset(
                image,
                width: 400.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: 400.0,
                  child: Text(
                    sostav,
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
