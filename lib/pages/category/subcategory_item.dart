import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubcategoryItem extends StatefulWidget {
  @override
  _SubcategoryItemState createState() => _SubcategoryItemState();
}

class _SubcategoryItemState extends State<SubcategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 30,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '常用分类',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              mainAxisSpacing: 3,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                      'https://m.360buyimg.com/mobile/s130x130_jfs/t1/16808/38/9654/5857/5c80eeefE18405d21/50f5df1464066b16.jpg.webp',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      '电器',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
