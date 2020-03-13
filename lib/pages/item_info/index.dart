import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/pages/item_info/footer.dart';
import 'package:learn_flutter/pages/item_info/swipper_item.dart' as SW;
import 'package:learn_flutter/pages/item_info/swipper_item.dart';
import 'package:learn_flutter/utils/color_util.dart';
import 'package:learn_flutter/utils/request_util.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemInfo extends StatefulWidget {
  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  ItemInfoResponseEntity itemInfo;
  String itemId;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _itemId = ModalRoute.of(context).settings.arguments;
    if (_itemId != itemId) {
      itemId = _itemId;
      initItemInfo(itemId);
    }
    if (itemInfo != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("商品详情"),
          toolbarOpacity: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SwipperItem(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    swipperOptionsList: itemInfo.floors[0].data.wareImage
                        .map((item) => SW.SwipperOptions(
                            imageUrl: item.big, jumpUrl: null))
                        .toList(),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
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
                                Icons.star,
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
                child: Text(
                  "华为 HUAWEI Mate 30 Pro 5G 麒麟990 OLED环幕屏双4000万徕卡电影四摄8GB+128GB翡冷翠5G全网通",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 80,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: RichText(
                  text: TextSpan(
                      text:
                          "【直降500元！到手价5899元�����享12期免息！低至16.2元/天】双4000万徕卡电影四摄；京小���信用租机低至328元/月起》",
                      style: TextStyle(
                        color: ColorUtil.hexToColor("#999"),
                        fontSize: 12,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "查看>",
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        )
                      ]),
                ),
              ),
              Footer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10800,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl:
                      "https://in.m.jd.com/product/detail/100009177424.html",
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("商品详情"),
        ),
      );
    }
  }

  /*
       * 根据商品ID获取商品详情
       */
  Future<ItemInfoResponseEntity> getItemInfoById(id) async {
    var res = await RequestUtil.getInstance().post(Api.ItemInfo);
    return EntityFactory.generateOBJ<ItemInfoResponseEntity>(res.data);
  }

  initItemInfo(String itemId) async {
    var _itemInfo = await this.getItemInfoById(itemId);
    this.setState(() {
      this.itemInfo = _itemInfo;
    });
  }
}
