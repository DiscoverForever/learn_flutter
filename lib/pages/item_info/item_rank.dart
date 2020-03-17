import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/pages/item_info/item_sku.dart';

import 'card_item.dart';

class ItemRank extends StatefulWidget {
  final ItemInfoResponseEntity itemInfo;
  ItemRank({Key key, @required this.itemInfo}) : super(key: key);
  @override
  _ItemRankState createState() => _ItemRankState();
}

class _ItemRankState extends State<ItemRank> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: CardItem(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 20),
        onTap: () {
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Material(
                    color: Colors.white,
                    child: ItemSku(item: widget.itemInfo?.floors[0]?.data),
                  ),
                ),
              );
            },
          );
        },
        slot: Row(
          children: <Widget>[
            Icon(
              Icons.insert_chart,
              color: Colors.red,
            ),
            Text(
              " 排行榜 ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.itemInfo?.floors[0]?.data?.unitedRank?.desc,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        suffixIcon: Icon(Icons.chevron_right),
      ),
    );
  }
}
