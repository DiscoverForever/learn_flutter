import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

import 'card_item.dart';

class ItemDisscount extends StatefulWidget {
  ItemInfoResponseFloor item;
  ItemDisscount({Key key, @required this.item}) : super(key: key);
  @override
  _ItemDisscountState createState() => _ItemDisscountState();
}

class _ItemDisscountState extends State<ItemDisscount> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: Column(
          children: <Widget>[
            CardItem(
              label: "优惠",
              slot: Column(
                children: <Widget>[
                  ...List.generate(3, (index) {
                    String label;
                    String text;
                    switch (index) {
                      case 0:
                        label = "白条";
                        text = widget.item?.data?.preferentialGuide
                            ?.whiteBarInfo?.marketingText;
                        break;
                      case 1:
                        label = widget.item?.data?.preferentialGuide?.promotion
                            ?.activity[0]?.text;
                        text = widget.item?.data?.preferentialGuide?.promotion
                            ?.activity[0]?.value;
                        break;
                      case 2:
                        label = widget.item?.data?.preferentialGuide?.promotion
                            ?.gift[0]?.text;
                        text = widget.item?.data?.preferentialGuide?.promotion
                            ?.gift[0]?.value;
                        break;
                      default:
                        break;
                    }
                    return Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            color: ColorUtil.hexToColor("#FFEAE8"),
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: Text(
                            label,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        LimitedBox(
                          maxWidth: MediaQuery.of(context).size.width - 135,
                          child: Text(
                            text,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    );
                  }),
                  Divider(),
                ],
              ),
              suffixIcon: Icon(Icons.more_horiz),
            ),
            CardItem(
              label: "活动",
              slot: Row(
                children: widget.item?.data?.actions?.bizActs?.map((item) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: Image.network(
                      item.icon,
                      height: 12,
                    ),
                  );
                })?.toList(),
              ),
              suffixIcon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
