import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget(
      {Key key, this.tamakAty, this.images, this.sostavv, this.tamakAtySize})
      : super(key: key);
  final String sostavv;
  final String images;
  final String tamakAty;
  final double tamakAtySize;

  @override
  State<MenuWidget> createState() => MenuWidgetState();
}
// final String sostavv;
// final String images;

class MenuWidgetState extends State<MenuWidget> {
  bool like = false;
  List<bool> liketar = <bool>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Image.asset(
              widget.images,
              width: 120.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  widget.tamakAty,
                  style: TextStyle(fontSize:18.0),
                ),
                Container(
                  width: 170.0,
                  child: Text(
                    widget.sostavv,
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Icon(
                        like ? Icons.favorite : Icons.favorite_border,
                        size: 20.0,
                        color: like ? Colors.red : Colors.black,
                      ),
                      onTap: () {
                        like = !like;
                        liketar.add(like);
                        setState(() {});
                      },
                      // onDoubleTap: () {
                      //   like = false;
                      //   liketar.removeAt(0);
                      //   setState(() {});
                      // },
                    ),
                    // Text('Нравится: ${liketar.length}')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
