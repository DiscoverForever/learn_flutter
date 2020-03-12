import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/item/recommend_item_response.dart';

class Item extends StatefulWidget {
  final WareInfo item;
  Item({ Key key, this.item}): super(key: key);
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
            child: Image.network(
              widget.item.itemType == 34 ? widget.item.subWareList[0].imageUrl : widget.item.imageurl,
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
                        widget.item.wname,
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
                        widget.item.itemType == 0 ? '¥${widget.item.jdPrice}' : '¥',
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
