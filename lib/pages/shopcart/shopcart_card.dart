import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/shopcart/shopcart_response_entity.dart';
import 'package:learn_flutter/pages/item_info/counter.dart';
import 'package:learn_flutter/widgets/countdown.dart';
import 'package:learn_flutter/widgets/round_checkbox.dart';
import 'package:learn_flutter/widgets/tag.dart';

class ShopcartCard extends StatefulWidget {
  final ShopcartResponseCartinfo cartInfo;
  ShopcartCard({Key key, this.cartInfo}) : super(key: key);
  @override
  _ShopcartCardState createState() => _ShopcartCardState();
}

class _ShopcartCardState extends State<ShopcartCard> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(children: <Widget>[
        cardHeader(),
        ...widget.cartInfo.vendors[0]?.sorted?.map((item) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 80),
                width: 30,
                child: RoundCheckbox(
                  value: isCheck,
                  backgroundColor: Colors.white,
                  activeColor: Color(0xFFE23C29),
                  checkColor: Colors.white,
                  activeBorderColor: Color(0xFFE23C29),
                  onChanged: (status) {
                    setState(() {
                      isCheck = status;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    cardSubheader(item),
                    cardBody(item),
                  ],
                ),
              )
            ],
          );
        })?.toList(),
      ]),
    );
  }

  cardHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 30,
          margin: EdgeInsets.only(bottom: 10),
          child: RoundCheckbox(
            value: isCheck,
            backgroundColor: Colors.white,
            activeColor: Color(0xFFE23C29),
            checkColor: Colors.white,
            activeBorderColor: Color(0xFFE23C29),
            onChanged: (status) {
              setState(() {
                isCheck = status;
              });
            },
          ),
        ),
        Expanded(
          child: Text(
            widget.cartInfo.vendors[0]?.shopName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(Icons.info_outline, color: Color(0xFFECECEC), size: 16),
            Text(
              widget.cartInfo.vendors[0]?.fareType == 0 ? "已免运费" : "",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }

  cardSubheader(ShopcartResponseCartinfoVendorsSorted item) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Tag(
            height: 14,
            padding: EdgeInsets.only(left: 1, right: 1),
            margin: EdgeInsets.only(right: 5),
            text: Text(
              "换购",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                height: 0.95,
              ),
            ),
            color: Colors.red,
            borderColor: Colors.red,
            radius: 3,
          ),
          Expanded(
            flex: 1,
            child: Text(
              item?.item?.sTip,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "去换购",
                  style: TextStyle(fontSize: 12),
                ),
                Icon(Icons.keyboard_arrow_right, size: 15)
              ],
            ),
          ),
        ],
      ),
      secKill(item?.item?.items[0]?.item?.secKillEndCountdown),
    ]);
  }

  /*
   * 秒杀 
   */
  secKill(int secKillEndCountdown) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "闪购",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  " 距离结束还有",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Countdown(
                timeLeft: secKillEndCountdown == null ? 0 : secKillEndCountdown,
              ),
            ],
          ),
        ],
      ),
    );
  }

  cardBody(ShopcartResponseCartinfoVendorsSorted item) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFF2F2F2))),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 0, right: 10),
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 1),
            ]),
            child: Image.network(
              "https://img30.360buyimg.com/test/${item.item.items[0]?.item?.imgUrl}",
              width: 85,
              height: 85,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 80 - 30 - 50,
                      child: Text(
                        item?.item?.items[0]?.item?.name,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            height: 1.1),
                      ),
                    ),
                  ],
                ),
                UnconstrainedBox(
                  child: Tag(
                    height: 20,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    text: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        LimitedBox(
                          maxWidth: 120,
                          child: Text(
                            "${item?.item?.items[0]?.item?.propertyTags?.a}, ${item?.item?.items[0]?.item?.propertyTags?.b}, ",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "${item?.item?.items[0]?.item?.propertyTags?.c} ",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Icon(Icons.keyboard_arrow_down, size: 12),
                      ],
                    ),
                    color: Color(0xFFF6F6F6),
                    borderWidth: 0,
                  ),
                ),
                skuLabels(
                    item?.item?.items[0]?.item?.skuLabels?.priceTop == null
                        ? []
                        : item?.item?.items[0]?.item?.skuLabels?.priceTop),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "¥${item?.item?.items[0]?.item?.priceRevert}",
                        style: TextStyle(
                          color: Color(0xFFE33D42),
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Counter(
                        defaultValue: 1,
                        min: 1,
                      )
                    ],
                  ),
                ),
                gift(item?.item?.items[0]?.item?.gifts),
              ],
            ),
          )
        ],
      ),
    );
  }

  skuLabels(
      List<ShopcartResponseCartinfoVendorsSortedItemItemsItemSkulabelsPricetop>
          skuLables) {
    return Wrap(
      spacing: 5,
      children: skuLables.map((label) {
        return Text(
          label.t,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color(0xFFC95030),
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        );
      }).toList(),
    );
  }

  /*
   * 配件赠品 
   */
  gift(List<ShopcartResponseCartinfoVendorsSortedItemItemsItemGift> gifts) {
    return Offstage(
      offstage: gifts.isEmpty,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "为您精选配件",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "赠品",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ...gifts?.map((gift) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 200,
                              child: Text(
                                gift?.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Offstage(
                              offstage: gift.num <= 1,
                              child: Text(
                                "x${gift.num}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        );
                      })
                    ],
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
