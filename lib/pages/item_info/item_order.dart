import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

import 'card_item.dart';
import 'item_sku.dart';

class ItemOrder extends StatefulWidget {
  final ItemInfoResponseEntity itemInfo;
  ItemOrder({Key key, @required this.itemInfo}) : super(key: key);
  @override
  _ItemOrderState createState() => _ItemOrderState();
}

class _ItemOrderState extends State<ItemOrder> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: <Widget>[
            CardItem(
              label: "已选",
              slot: Text(
                widget.itemInfo?.floors[0]?.data?.colorSizeInfo?.colorSize
                    ?.map((item) {
                  return item?.buttons[0]?.text;
                })?.join(","),
              ),
              suffixIcon: Icon(Icons.more_horiz),
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
                          child:
                              ItemSku(item: widget.itemInfo?.floors[0]?.data),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            CardItem(
              label: "送至",
              slot: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          "${widget.itemInfo?.floors[0]?.data?.defaultAddr?.provinceName}${widget.itemInfo?.floors[0]?.data?.defaultAddr?.cityName}${widget.itemInfo?.floors[0]?.data?.defaultAddr?.countyName}",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: widget.itemInfo?.floors[0]?.data?.stock,
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              suffixIcon: Icon(Icons.more_horiz),
              onTap: () async {
                var res = await CityPickers.showCityPicker(context: context);
                print(res);
              },
            ),
            CardItem(
              label: "运费",
              slot: Text(widget.itemInfo?.floors[0]?.data?.fare),
            ),
            CardItem(
              color: ColorUtil.hexToColor("#FCFCFC"),
              slot: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Image.network(
                          widget
                              .itemInfo?.floors[0]?.data?.trustworthy?.iconUrl,
                          scale: 1.9,
                        ),
                      ),
                      ...widget
                          .itemInfo?.floors[0]?.data?.trustworthy?.iconListOne
                          ?.map((item) {
                        return Text(
                          item?.text + "ㆍ",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        );
                      })?.toList(),
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ...widget.itemInfo?.floors[0]?.data?.serviceInfo?.basic
                          ?.iconList
                          ?.take(3)
                          ?.map((item) {
                        return Row(
                          children: <Widget>[
                            Image.network(
                              item?.imageUrl,
                              scale: 2.7,
                            ),
                            Text(
                              item?.text,
                              style: TextStyle(
                                color: ColorUtil.hexToColor("#999"),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        );
                      })?.toList(),
                    ],
                  ),
                ],
              ),
              suffixIcon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
