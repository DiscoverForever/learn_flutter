import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/color_util.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(
          color: ColorUtil.hexToColor("#999"),
          width: 0.2,
        )),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          Expanded(
            flex: 1,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
