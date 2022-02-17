import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 208, 240, 157),
              Color.fromARGB(255, 58, 139, 20),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8]));
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: boxDecoration,
      ),
      _GreenBox()
    ]));
  }
}

class _GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
          gradient: LinearGradient(begin: Alignment.center,end: Alignment.topCenter,colors: [
            Color.fromARGB(255, 43, 161, 63),
            Color.fromARGB(255, 19, 100, 69)
          ])),
    );
  }
}
