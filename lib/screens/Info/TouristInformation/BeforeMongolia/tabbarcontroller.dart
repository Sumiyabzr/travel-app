import 'package:flutter/material.dart';
import 'package:visitulaanbaatar/screens/Info/TouristInformation/BeforeMongolia/transportation.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transportation(),
    );
  }
}
