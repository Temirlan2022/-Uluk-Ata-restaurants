import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proect_2/drawerList/menin_drawer_menum.dart';
import 'package:proect_2/widgets/name_number_widget.dart';
import 'drawerList/drawerList_widget.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({Key key}) : super(key: key);

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 220, 214),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.red),
            elevation: 0.0,
            backgroundColor: const Color.fromARGB(255, 255, 220, 214),
          ),
          body: Column(
            children: <Widget>[
              imageProfile(),
              const SizedBox(
                height: 20.0,
              ),
              name_number_widget(name_text: 'Аданбаев Темирлан'),
              name_number_widget(
                name_text: "0559070590", numberSize: 20.0,
              ),
            ],
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [MyHeaderDrawer(), MyDrawerList()],
              )),
            ),
          )),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
              radius: 80.0,
              backgroundImage: _imageFile == null
                  ? const AssetImage('assets/images/person_icon.webp')
                  : FileImage(File(_imageFile.path))),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          const Text(
            'Сурот коюу',
            style: TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: const Icon(Icons.camera),
                label: const Text('Камера'),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: const Icon(Icons.image),
                label: const Text('Галерея'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [MenuIten()],
      ),
    );
  }
}
