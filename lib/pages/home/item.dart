import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ItemState();
}

class ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 185,
            width: double.infinity,
            child: Image.network(
              'http://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg!q70.dpg.webp',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '自营',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      height: 15,
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '来自加利福尼亚的iphone xs max 原产于美国的空气 原产于美国的空气 原产于美国的空气',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '¥100',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 15,
                        padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: Center(
                          child: Text(
                            '看相似',
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
