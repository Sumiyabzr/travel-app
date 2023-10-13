import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pop(context);
      Navigator.popAndPushNamed(context, '/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        "http://192.168.0.103:7000/asset/home1.jpg",
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
