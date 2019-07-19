import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ItemState();
}

class ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(''),
          Row(
            children: <Widget>[],
          ),
          Row(
            children: <Widget>[
              Text(
                '¥100',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                ),
              ),
              FlatButton(
                onPressed: null,
                child: Text('看相似'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
