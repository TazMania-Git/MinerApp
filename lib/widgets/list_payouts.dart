import 'package:flutter/material.dart';

class ListPayouts extends StatelessWidget {
  const ListPayouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Stack(children: [_GreenBox()]),
    );
  }
}

class _GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80), topRight: Radius.circular(80)),
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 43, 161, 63),
                Color.fromARGB(255, 19, 100, 69)
              ])),
    );
  }
}
