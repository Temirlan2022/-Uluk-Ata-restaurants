import 'package:flutter/material.dart';
import 'package:proect_2/birinchi_bet.dart';
import 'package:proect_2/ekinchi_bet.dart';
import 'package:proect_2/about_me.dart';
import 'package:proect_2/drawerList/menin_drawer_menum.dart';
import 'package:proect_2/widgets/widget_vcladki.dart';
import 'package:proect_2/zakazat.dart';
import 'package:video_player/video_player.dart';
import 'drawerList/drawerList_widget.dart';

class Glavnyibet extends StatefulWidget {
  const Glavnyibet({Key key}) : super(key: key);

  @override
  State<Glavnyibet> createState() => _GlavnyibetState();
}

class _GlavnyibetState extends State<Glavnyibet> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/reclama.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                child: InkWell(
                    onTap: () {
                      //диалоговое окно башталды
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          insetPadding: EdgeInsets.symmetric(
                            vertical: 215.0,
                            horizontal: 10.0
                          ),
                          content: Column(
                            children: [
                              FutureBuilder(
                                future: _initializeVideoPlayerFuture,
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.done) {
                                    return AspectRatio(
                                      aspectRatio:
                                          _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    );
                                  } else {
                                    return Center(
                                        child: CircularProgressIndicator());
                                  }
                                },
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (_controller.value.isPlaying) {
                                      _controller.pause();
                                    } else{
                                      _controller.play();
                                    }
                                  });
                                },
                                child: Icon(_controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Закрыть'))
                          ],
                        ),
                      );
                    },
                    child: Image.asset('assets/images/tamak.webp')),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Birinchibet())));
                    },
                    child: vcladkiWidget(
                        vcladki_name: 'МЕНЮ',
                        fhoto: 'assets/images/menu_icon.webp'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Ekinchibet())));
                    },
                    child: vcladkiWidget(
                      vcladki_name: 'Биздин дарек',
                      fhoto: 'assets/images/adres_icon.jpg',
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Zakazat())));
                      },
                      child: vcladkiWidget(
                          vcladki_name: 'Заказ еды',
                          fhoto: 'assets/images/icon_dostafka.webp'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Aboutme())));
                      },
                      child: vcladkiWidget(
                          vcladki_name: 'Личный кабинет',
                          Fontsize: 12.0,
                          fhoto: 'assets/images/person_icon.webp'),
                    ),
                  ),
                ])
              ],
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
