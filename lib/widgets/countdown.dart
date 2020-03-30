import 'dart:async';

import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  final int timeLeft;
  final DateTime endTime;
  Countdown({
    Key key,
    this.timeLeft = 0,
    this.endTime,
  }) : super(key: key);
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  var time;
  Timer countdownTimer;
  @override
  void initState() {
    super.initState();
    time = widget.timeLeft;
    initTimmer();
  }

  initTimmer() {
    countdownTimer = Timer.periodic(new Duration(seconds: 1), (timer) {
      if (time > 0) {
        setState(() {
          time--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var hour = (time ~/ 3600).toString();
    var minute = ((time % 3600) ~/ 60).toString();
    var second = (time % 60).toString();
    return Container(
      width: 100,
      height: 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 14,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text(
              hour.length == 2 ? hour : "0$hour",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                height: 0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            ":",
            style: TextStyle(height: 0.6),
          ),
          Container(
            height: 14,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text(
              minute.length == 2 ? minute : "0$minute",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                height: 0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            ":",
            style: TextStyle(height: 0.6),
          ),
          Container(
            height: 14,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text(
              second.length == 2 ? second : "0$second",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                height: 0.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer.cancel();
  }
}
