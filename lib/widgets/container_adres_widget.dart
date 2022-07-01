import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class container_adres_widget extends StatelessWidget {
   container_adres_widget({this.container_text, this.url, this.urlText
  });
  final String container_text;
  final Uri url;
  final String urlText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 150.0,
        margin: const EdgeInsets.all(15.0),
        color: const Color.fromARGB(255, 255, 255, 255),
        height: 160.0,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(container_text,
                  style: TextStyle(fontSize: 15.0)),
            ),
            Link(
              target: LinkTarget.blank,
              uri: url,
              builder: (context, followLink) => TextButton(
                onPressed: followLink,
                child:  Text(urlText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
