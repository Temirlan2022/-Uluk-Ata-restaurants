import 'package:flutter/material.dart';
import 'glavnyi_bet.dart';
import 'birinchi_bet.dart';
import 'ekinchi_bet.dart';
import 'about_me.dart';
import 'kattoo.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'kattaluu',
        routes: {
          'Glavnyibet': (context) => Glavnyibet(),
          'Birinchibet': (context) => Birinchibet(),
          'Ekinchibet': (context) => Ekinchibet(),
          'Aboutme': (context) => Aboutme(),
          'kattaluu': (context) => kattaluu(),
        },
      ),
    );
