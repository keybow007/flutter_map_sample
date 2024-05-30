import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    /*
    * FlutterMapのコードデモ
    * https://docs.fleaflet.dev/#code-demo
    * FlutterMapクラス
    * https://docs.fleaflet.dev/usage/basics
    * */
    return FlutterMap(
      /*
      * MapOptions
      * https://docs.fleaflet.dev/usage/options
      * https://pub.dev/documentation/flutter_map/latest/flutter_map/MapOptions-class.html
      *
      * */
      options: MapOptions(
          initialCenter: LatLng(34.6351, 135.5904), initialZoom: 15.0),
      children: <Widget>[
        /*
        * Layers
        * https://docs.fleaflet.dev/usage/layers
        * TileLayer
        * https://docs.fleaflet.dev/layers/tile-layer
        * */
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        /*
        * TileLayerで地図を表示させてMarketLayerでマーカーを付けるみたい
        * https://docs.fleaflet.dev/layers/marker-layer
        * */
        MarkerLayer(markers: [
          Marker(
            point: LatLng(34.6351, 135.5904),
            child: Icon(
              Icons.place,
              size: 48.0,
              color: Colors.redAccent,
            ),
          )
        ]),
      ],
    );
  }
}
