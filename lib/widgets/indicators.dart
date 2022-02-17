import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: indicatorPercent(),);
  }
}

class indicatorPercent extends StatelessWidget {
  const indicatorPercent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 25.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: Colors.green,
                );
  }
}
