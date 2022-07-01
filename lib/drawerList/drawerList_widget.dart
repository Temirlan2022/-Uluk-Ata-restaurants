import 'package:flutter/material.dart';
import 'package:proect_2/about_me.dart';
import 'package:proect_2/birinchi_bet.dart';
import 'package:proect_2/ekinchi_bet.dart';
import 'package:proect_2/zakazat.dart';

class MenuIten extends StatefulWidget {
  MenuIten({Key key}) : super(key: key);

  @override
  State<MenuIten> createState() => _MenuItenState();
}

class _MenuItenState extends State<MenuIten> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Birinchibet())));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(Icons.menu_book),
                  ),
                  Expanded(
                      child: Text(
                    'Меню',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Ekinchibet())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(Icons.location_city),
                  ),
                  Expanded(
                      child: Text(
                    'Наш адрес',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Zakazat())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(Icons.car_repair),
                  ),
                  Expanded(
                      child: Text(
                    'Доставка',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Aboutme())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(Icons.person),
                  ),
                  Expanded(
                      child: Text(
                    'Профиль',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}