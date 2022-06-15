import 'package:flutter/material.dart';
import 'package:proect_2/birinchi_bet.dart';
import 'package:proect_2/ekinchi_bet.dart';
import 'package:proect_2/about_me.dart';
import 'package:proect_2/menin_drawer_menum.dart';
import 'package:proect_2/zakazat.dart';

class Glavnyibet extends StatefulWidget {
  const Glavnyibet({Key key}) : super(key: key);

  @override
  State<Glavnyibet> createState() => _GlavnyibetState();
}

class _GlavnyibetState extends State<Glavnyibet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 220, 214),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
            title: Text(
              '"Улук Ата" кафеси',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 255, 255)),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 300.0,
                margin: EdgeInsets.only(top: 30.0),
                child: Image.asset('assets/images/tamak.webp'),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: (){ Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Birinchibet())));},
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(10.0),
                      height: 125.0,
                      width: 125.0,
                      child: Column(
                        children: [
                          Image.asset('assets/images/menu_icon.webp'),
                          Text('МЕНЮ')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                     onPressed: (){ Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Ekinchibet())));},
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0,),
                      padding: EdgeInsets.all(10.0),
                      height: 125.0,
                      width: 125.0,
                      child: Column(
                        children: [
                          Container(width: 87.0,child: Image.asset('assets/images/adres_icon.jpg')),
                          Text('Биздин дарек'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),Column(children: [ Row(
              children: [
                Expanded(
                  child: FlatButton(
                     onPressed: (){ Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Zakazat())));},
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(10.0),
                      height: 125.0,
                      width: 125.0,
                      child: Column(
                        children: [
                          Image.asset('assets/images/icon_dostafka.webp'),
                          Text('Заказ еды')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                     onPressed: (){ Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Aboutme())));},
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(10.0),
                      height: 125.0,
                      width: 125.0,
                      child: Column(
                        children: [
                          Container(width: 86.0, child: Image.asset('assets/images/person_icon.webp')),
                          Text('Личный кабинет', style: TextStyle(fontSize: 12.0),),
                        ],
                      ),
                    ),
                  ),
                ),
                
              ]
            )],),
          ],
        ),drawer: Drawer(
          
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
      child: Column(children: [menuItem()],),
    );
  }

  Widget menuItem() {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap:() {Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Birinchibet())));},
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.menu_book
                    ),
                  ),
                  Expanded(child: Text('Меню', style: TextStyle(color: Colors.black, fontSize: 16.0),))
                ],
              ),
            ),
          ), InkWell(
            onTap:() { Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Ekinchibet())));},
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.location_city
                    ),
                  ),
                  Expanded(child: Text('Наш адрес', style: TextStyle(color: Colors.black, fontSize: 16.0),))
                ],
              ),
            ),
          ),
          InkWell(
            onTap:() { Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Zakazat())));},
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.car_repair                    ),
                  ),
                  Expanded(child: Text('Доставка', style: TextStyle(color: Colors.black, fontSize: 16.0),))
                ],
              ),
            ),
          ), InkWell(
            onTap:() { Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Aboutme())));},
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.person
                    ),
                  ),
                  Expanded(child: Text('Профиль', style: TextStyle(color: Colors.black, fontSize: 16.0),))
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
