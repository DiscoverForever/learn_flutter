import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/shopcart/shopcart_response_entity.dart';
import 'package:learn_flutter/pages/item_info/counter.dart';
import 'package:learn_flutter/widgets/round_checkbox.dart';
import 'package:learn_flutter/widgets/tag.dart';

class ShopcartCard extends StatefulWidget {
  ShopcartResponseCartinfo cartInfo;
  ShopcartCard({ Key key, this.cartInfo }): super(key: key);
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
        Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
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
                  cardSubheader(),
                  ...widget.cartInfo.vendors[0]?.sorted?.map((item) {
                    return cardBody(item);
                  }),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }

  cardHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: 40,
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

  cardSubheader() {
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
              "xxxxxxxxxxx",
              style: TextStyle(fontWeight: FontWeight.bold),
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
      Row(
        children: <Widget>[
          Text(
            "闪购",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              " 距离结束还有00:00:00",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      )
    ]);
  }

  cardBody(ShopcartResponseCartinfoVendorsSorted item) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 0, right: 10),
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black12, blurRadius: 30, spreadRadius: 3),
            ]),
            child: Image.network(
              "https://img30.360buyimg.com/test/${item.item.items[0]?.item?.imgUrl}",
              width: 80,
              height: 80,
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
                      width: MediaQuery.of(context).size.width - 80 - 30 - 40,
                      child: Text(
                        "华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色5G全网通游戏手机",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                UnconstrainedBox(
                  child: Tag(
                    height: 15,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    text: Text(
                      "亮黑色",
                      style: TextStyle(fontSize: 12),
                    ),
                    color: Color(0xFFF6F6F6),
                    borderWidth: 0,
                  ),
                ),
                Text(
                  "白条12期免息",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFC95030),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "¥4999.00",
                        style: TextStyle(
                          color: Color(0xFFE33D42),
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Counter(
                        defaultValue: 0,
                      )
                    ],
                  ),
                ),
                Text(
                  "为您精选配件",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("赠品",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("dsxxxxxxxx"),
                              Text("x2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          Text(
                            "xxxfjksfjskldfksdjffdafdsafdsafdsafdsfsdf",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
