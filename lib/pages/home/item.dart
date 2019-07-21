import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ItemState();
}

class ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            child: Image.network(
              'http://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg!q70.dpg.webp',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 20,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
        ],
      ),
    );
  }
}
