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
      Navigator.popAndPushNamed(context, '/boarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: NetworkImage('http://202.179.6.26:8000/asset/Other/splash.jpg'),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
