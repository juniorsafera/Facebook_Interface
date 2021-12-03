import 'package:facebook_interface_responsive/others/palette_colors.dart';
import 'package:facebook_interface_responsive/views/home.dart';
import 'package:facebook_interface_responsive/views/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Palette_Colors.scaffold
    ),
   // home: Home(),
   home: Principal(),
  ));
}

 
