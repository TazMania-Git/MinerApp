import 'package:flutter/material.dart';
import 'package:minerapp/widgets/background.dart';
import 'package:minerapp/widgets/indicators.dart';
import 'package:minerapp/widgets/list_payouts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background(),
        Container(
            margin: EdgeInsetsDirectional.only(top: 30),
            alignment: Alignment.topCenter,
            child: Indicator()),
            ListPayouts()
      ]),
    );
  }
}
