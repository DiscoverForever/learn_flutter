import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/color_util.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(direction: Axis.horizontal, children: <Widget>[
        Container(
          width: 50,
          child: Column(
            children: <Widget>[
              Icon(Icons.call),
              Text(
                "联系客服",
                style: TextStyle(
                    color: ColorUtil.hexToColor("#999"), fontSize: 10),
              ),
            ],
          ),
        ),
        Container(
          width: 50,
          child: Column(
            children: <Widget>[
              Icon(Icons.store),
              Text(
                "店铺",
                style: TextStyle(
                    color: ColorUtil.hexToColor("#999"), fontSize: 10),
              ),
            ],
          ),
        ),
        Container(
          width: 50,
          child: Column(
            children: <Widget>[
              Icon(Icons.shopping_cart),
              Text(
                "购物车",
                style: TextStyle(
                    color: ColorUtil.hexToColor("#999"), fontSize: 10),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: FlatButton(
                    color: Colors.red,
                    highlightColor: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "加入购物车",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: FlatButton(
                    color: Colors.orange,
                    highlightColor: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "立即购买",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
