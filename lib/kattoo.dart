import 'package:flutter/material.dart';
import 'test.dart';
import 'glavnyi_bet.dart';

class kattaluu extends StatefulWidget {
  kattaluu({Key key}) : super(key: key);

  @override
  State<kattaluu> createState() => _kattaluuState();
}

class _kattaluuState extends State<kattaluu> {
  String _aty = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 255, 220, 214),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Ваше имя и фамилия",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.call),
                hintText: "Номер телефона",
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Ваши данные хранится в безопасности',
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                onPressed: () { Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Glavnyibet())));},
                child: Text('Далее'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
