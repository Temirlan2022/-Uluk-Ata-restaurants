import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proect_2/about_me.dart';
import 'package:proect_2/birinchi_bet.dart';
import 'package:proect_2/menin_drawer_menum.dart';
import 'package:proect_2/zakazat.dart';
import 'package:url_launcher/link.dart';

class Ekinchibet extends StatefulWidget {
  const Ekinchibet({Key key}) : super(key: key);

  @override
  State<Ekinchibet> createState() => _EkinchibetState();
}

class _EkinchibetState extends State<Ekinchibet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 220, 214),
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.red),
            title: Text(
              'О нас',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 214, 212, 212)),
        body: Container(
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 150.0,
                      margin: EdgeInsets.all(15.0),
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: 160.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Связаться с нами:',
                                style: TextStyle(fontSize: 15.0)),
                          ),
                          Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse('tel:0559070590'),
                            builder: (context, followLink) => TextButton(
                              onPressed: followLink,
                              child: Text('0559070590'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150.0,
                      margin: EdgeInsets.all(15.0),
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: 160.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Наш адрес:',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                           Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse('https://go.2gis.com/obzawn'),
                            builder: (context, followLink) => TextButton(
                              onPressed: followLink,
                              child: Text('Аскар Шакиров 132'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
                child: Column(
              children: [MyHeaderDrawer(), MyDrawerList()],
            )),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [menuItem()],
      ),
    );
  }

  Widget menuItem() {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Birinchibet())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
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
                children: [
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
                children: [
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
                children: [
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
