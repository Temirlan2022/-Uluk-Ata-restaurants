import 'package:flutter/material.dart';
import 'package:proect_2/drawerList/menin_drawer_menum.dart';
import 'package:proect_2/widgets/container_adres_widget.dart';
import 'package:url_launcher/link.dart';
import 'drawerList/drawerList_widget.dart';

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
            iconTheme: const IconThemeData(color: Colors.red),
            title: const Text(
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
                  container_adres_widget(
                      urlText: '0559070590',
                      container_text: 'Связаться с нами:',
                      url: Uri.parse('https://go.2gis.com/obzawn')),
                  container_adres_widget(
                    urlText: 'Аскар Шакиров 132',
                    container_text: 'Наш адрес:',
                    url: Uri.parse('tel:0559070590'),
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
        children: [MenuIten()],
      ),
    );
  }
}
