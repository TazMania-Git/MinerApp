import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: indicatorPercent(),
    );
  }
}

class indicatorPercent extends StatelessWidget {
  const indicatorPercent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        color: Color.fromARGB(255, 0, 51, 26),
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold);
    return CircularPercentIndicator(
      footer: txtDatos(),
      header: Text("Next Payout", style: textStyle),
      radius: 100.0,
      lineWidth: 25.0,
      percent: 0.5,
      center: new Text("24H 36m",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 0, 51, 26),
          )),
      progressColor: Colors.green,
    );
  }
}

class txtDatos extends StatelessWidget {
  const txtDatos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        color: Color.fromARGB(255, 0, 51, 26),
        fontSize: 20,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold);
    var resultStyle = TextStyle(
        color: Color.fromARGB(255, 241, 221, 33),
        fontSize: 22,
        fontWeight: FontWeight.bold);
    ;
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Acumulado",
                style: textStyle,
              ),
              SizedBox(width: 40),
              Text(
                "Average",
                style: textStyle,
              ),
              SizedBox(width: 40),
              Text(
                "Estimado",
                style: textStyle,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$1000",
                style: resultStyle,
              ),
              SizedBox(width: 50),
              Text(
                "173 MH/s",
                style: resultStyle,
              ),
              SizedBox(width: 40),
              Text(
                "\$ 8",
                style: resultStyle,
              )
            ],
          ),
        )
      ]),
    );
  }
}
