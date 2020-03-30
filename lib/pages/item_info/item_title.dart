import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

class ItemTitle extends StatefulWidget {
  final ItemInfoResponseFloor item;
  ItemTitle({Key key, @required this.item}) : super(key: key);
  @override
  _ItemTitleState createState() => _ItemTitleState();
}

class _ItemTitleState extends State<ItemTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "¥",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "4499.00",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: ColorUtil.hexToColor("#999"),
                          ),
                          Text(
                            "降价通知",
                            style: TextStyle(
                              color: ColorUtil.hexToColor("#999"),
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,
                            color: ColorUtil.hexToColor("#999"),
                          ),
                          Text(
                            "关注",
                            style: TextStyle(
                              color: ColorUtil.hexToColor("#999"),
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: Text(
                    "秒杀预告",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                  child: Text(
                    "3月14日00:00 秒杀价¥4499.00",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.alarm,
                      size: 12,
                    ),
                    Text(
                      "提醒我",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: Text(
              widget.item.data.wareInfo.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: RichText(
              text: TextSpan(
                  text: widget.item.data.ad.adword,
                  style: TextStyle(
                    color: ColorUtil.hexToColor(widget.item.data.ad.textColor),
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.item.data.ad.adLinkContent,
                      style: TextStyle(
                          color:
                              ColorUtil.hexToColor(widget.item.data.ad.color),
                          fontSize: 12),
                    )
                  ]),
            ),
          ),
          Divider(
            height: 1,
            color: ColorUtil.hexToColor("#e8e8ed"),
          ),
          // 规格
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    '规格',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ...widget.item.data.cccKernel.map((sku) {
                  return Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          sku.icon,
                          scale: 1.8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            sku.paramName,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            sku.paramValue,
                            style: TextStyle(
                              color: ColorUtil.hexToColor("#999"),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
