import 'package:flutter/material.dart';

class widget_zakryt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Закрыть'));
  }
}
