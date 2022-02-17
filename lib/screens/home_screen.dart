import 'package:flutter/material.dart';
import 'package:minerapp/widgets/background.dart';
import 'package:minerapp/widgets/indicators.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background(),
        Container(
            margin: EdgeInsetsDirectional.only(top: 70),
            alignment: Alignment.topCenter,
            child: Indicator())
      ]),
    );
  }
}
