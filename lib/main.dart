import 'package:belanja/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue,
      fontFamily: 'Roboto',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      
    },
  ));
}
