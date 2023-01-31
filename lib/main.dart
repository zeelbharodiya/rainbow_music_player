import 'package:flutter/material.dart';
import 'package:mb_rainbowmusicplayer/views/screens/secondpage.dart';

import 'homepage.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomePage(),
        'Page2' : (context) => Page2(),
      },
    ),
  );
}