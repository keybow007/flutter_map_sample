import 'package:flutter/material.dart';
import 'package:flutter_map_sample/home_screen.dart';

/*
* flutter_map
* https://pub.dev/packages/flutter_map
* https://docs.fleaflet.dev/
*
* OpenStreetMap
* https://www.openstreetmap.org/
*
* */


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
