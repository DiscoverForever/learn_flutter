import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/shopcart/shopcart_response_entity.dart';
import 'package:learn_flutter/widgets/countdown.dart';
import 'package:learn_flutter/widgets/counter.dart';
import 'package:learn_flutter/widgets/round_checkbox.dart';
import 'package:learn_flutter/widgets/tag.dart';

class ShopcartCard extends StatefulWidget {
  final ShopcartResponseCartinfoVendor vendor;
  ShopcartCard({Key key, this.vendor}) : super(key: key);
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
        ...widget.vendor?.sorted?.asMap()?.keys?.map((index) {
          return Column(
            children: <Widget>[
              // itemType:1 商品
              widget.vendor?.sorted[index]?.itemType == 1 ? product(widget.vendor?.sorted[index]) : product(widget.vendor?.sorted[index]?.item?.items[0], otherData: widget.vendor?.sorted[index]),
              Offstage(
                offstage: index == widget.vendor.sorted.length - 1,
                child: Divider(),
              ),
            ],
          );
        })?.toList(),
      ]),
    );
  }

  /*
   * 商品 
   */
  product(ShopcartResponseCartinfoVendorsSorted sorted, { ShopcartResponseCartinfoVendorsSorted otherData }) {
    return Column(
      children: <Widget>[
        cardSubheader(sorted, otherData: otherData),
        cardBody(sorted),
      ],
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
            widget.vendor?.shopName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(Icons.info_outline, color: Color(0xFFECECEC), size: 16),
            Text(
              widget.vendor?.fareType == 0 ? "已免运费" : "",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }

  cardSubheader(ShopcartResponseCartinfoVendorsSorted item, { ShopcartResponseCartinfoVendorsSorted otherData }) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Column(children: <Widget>[
        Offstage(
          offstage: item?.item?.secKillEndCountdown == null,
          child: secKill(item?.item?.secKillEndCountdown),
        ),
        Offstage(
          offstage: otherData?.item?.sType != 16,
          child: redemption(otherData?.item),
        ),
      ]),
    );
  }

  /*
   * 换购
   */
  redemption(ShopcartResponseCartinfoVendorsSortedItem item) {
    print(item?.suitLabel);
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Tag(
            height: 12,
            padding: EdgeInsets.only(left: 1, right: 1),
            margin: EdgeInsets.only(right: 5),
            text: Text(
              item?.suitLabel == null ? "" : item?.suitLabel,
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                height: 1.1,
              ),
            ),
            color: Colors.red,
            borderColor: Colors.red,
            radius: 3,
          ),
          Expanded(
            flex: 1,
            child: Text(
              item?.sTip == null ? "" : item?.sTip,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  item?.entryLabel == null ? "" : item?.entryLabel,
                  style: TextStyle(fontSize: 12),
                ),
                Icon(Icons.keyboard_arrow_right, size: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }

  /*
   * 秒杀 
   */
  secKill(int secKillEndCountdown) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
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
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  " 距离活动结束时间结束还剩",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
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
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: 30,
            height: 100,
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
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 0, right: 10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xFFF2F2F2), blurRadius: 10, spreadRadius: 1),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                "https://img30.360buyimg.com/test/${item?.item?.imgUrl}",
                width: 100,
                height: 100,
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 80 - 30 - 60,
                      child: Text(
                        item?.item?.name,
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
                            "${item?.item?.propertyTags?.a}, ${item?.item?.propertyTags?.b}, ",
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
                          "${item?.item?.propertyTags?.c} ",
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
                    item?.item?.skuLabels?.priceTop == null
                        ? []
                        : item?.item?.skuLabels?.priceTop),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Text(
                      //   "¥${item?.item?.items[0]?.item?.priceRevert}",
                      //   style: TextStyle(
                      //     color: Color(0xFFE33D42),
                      //     fontWeight: FontWeight.w900,
                      //     fontSize: 16,
                      //   ),
                      // ),
                      RichText(
                        text: TextSpan(text: item?.item?.priceShow?.substring(0, 1),
                        style: TextStyle(
                          color: Color(0xFFE33D42),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: item?.item?.priceShow?.substring(1, item?.item?.priceShow?.indexOf(".")),
                            style: TextStyle(
                              color: Color(0xFFE33D42),
                              fontSize: 18,
                              fontFamily: "Pingfang",
                            ),
                          ),
                          TextSpan(
                            text: ".${item?.item?.priceShow?.split('.')[1]}",
                            style: TextStyle(
                              color: Color(0xFFE33D42),
                              fontSize: 12,
                            ),
                          ),
                        ]),
                      ),
                      Counter(
                        defaultValue: 1,
                        min: 1,
                      )
                    ],
                  ),
                ),
                gift(item?.item?.gifts),
              ],
            ),
          )
        ],
      ),
    );
  }

  skuLabels(
      List<ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop>
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
  gift(List<ShopcartResponseCartinfoVendorsSortedItemGift> gifts) {
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
