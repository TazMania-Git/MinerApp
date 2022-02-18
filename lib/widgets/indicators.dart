import 'package:percent_indicator/percent_indicator.dart';
import 'package:liquid_progress_indicator_ns/liquid_progress_indicator.dart';
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

    // return CircularIndicator(textStyle: textStyle);
    return Column(
      children: [
        Text("Next Payout", style: textStyle),
        LiquidCircularIndicator(),
        txtDatos()
      ],
    );
  }
}

class LiquidCircularIndicator extends StatelessWidget {
  const LiquidCircularIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        color: Color.fromARGB(255, 0, 51, 26),
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold);

    return Container(
      height: 200,
      width: 200,
      child: LiquidCircularProgressIndicator(
        value: 0.50, // Defaults to 0.5.
        valueColor: AlwaysStoppedAnimation(Color.fromARGB(
            255, 30, 233, 57)), // Defaults to the current Theme's accentColor.
        backgroundColor:
            Colors.white, // Defaults to the current Theme's backgroundColor.
        borderColor: Color.fromARGB(255, 4, 126, 67),
        borderWidth: 5.0,
        direction: Axis
            .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
        center: Text("50 %", style: textStyle),
      ),
    );
  }
}

/**
 * ! CIRCULAR INDICATOR, NOT LIQUID
class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
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
 */

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
