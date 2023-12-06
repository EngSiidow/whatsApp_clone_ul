import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ul/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Color(0xff075E54),
      ),
      home: HomeSreen(),
    );
  }
}
