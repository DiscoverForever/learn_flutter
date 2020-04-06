import 'package:flutter/material.dart';
import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/pages/item_info/footer.dart';
import 'package:learn_flutter/pages/item_info/item_discount.dart';
import 'package:learn_flutter/pages/item_info/item_title.dart';
import 'package:learn_flutter/pages/item_info/swipper_item.dart' as SW;
import 'package:learn_flutter/pages/item_info/swipper_item.dart';
import 'package:learn_flutter/utils/color_util.dart';
import 'package:learn_flutter/utils/request_util.dart';

import 'item_order.dart';
import 'item_rank.dart';

class ItemInfo extends StatefulWidget {
  final String itemId;

  ItemInfo({Key key, @required this.itemId}) : super(key: key);
  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> with TickerProviderStateMixin {
  ItemInfoResponseEntity itemInfo;
  double appBarOpacity = 0;
  @override
  void initState() {
    super.initState();
    this.initItemInfo(widget.itemId);
  }

  @override
  Widget build(BuildContext context) {
    // TODO 可使用FutureBuilder实现
    return Scaffold(
      body: itemInfo == null
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            )
          : Stack(
              children: <Widget>[
                NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification notification) {
                    var scrollY = notification.metrics.pixels;
                    if (scrollY > 0) {
                      var opacity = scrollY / 230;
                      setState(() {
                        appBarOpacity = opacity <= 1 ? opacity : 1;
                      });
                    } else if (scrollY < 0) {
                      setState(() {
                        appBarOpacity = 0;
                      });
                    }
                    return false;
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      color: ColorUtil.hexToColor("#F2F2F2"),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SwipperItem(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 2,
                                swipperOptionsList: itemInfo
                                    .floors[0].data.wareImage
                                    .map((item) => SW.SwipperOptions(
                                        imageUrl: item.big, jumpUrl: null))
                                    .toList(),
                              ),
                            ],
                          ),
                          ItemTitle(
                            item: itemInfo.floors[0],
                          ),
                          // 优惠
                          ItemDisscount(
                            item: itemInfo.floors[0],
                          ),
                          // 地址&&运费
                          ItemOrder(itemInfo: itemInfo),
                          // 商品排行榜
                          ItemRank(
                            itemInfo: itemInfo,
                          ),
                          // 商品详情
                          Container(
                            width: MediaQuery.of(context).size.width,
                            // TODO Android 超过5500高度会黑屏崩溃
                            height: 5500,
//                            child: WebView(
//                              javascriptMode: JavascriptMode.unrestricted,
//                              initialUrl:
//                                  "https://in.m.jd.com/product/detail/100009177424.html",
//                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  child: Container(
                    color: Color.fromRGBO(255, 255, 255, appBarOpacity),
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        navigatorActionBar(
                          icon: Icons.navigate_before,
                          opacity: appBarOpacity,
                          onTap: () {
                            Navigator.of(context).pop();
                          }
                        ),
                        Container(
                          width: 240,
                          child: Offstage(
                            offstage: appBarOpacity == 0,
                            child: TabBar(
                              labelPadding: EdgeInsets.all(0),
                              indicatorColor: Colors.red,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelColor: Colors.black,
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "PingFang"),
                              unselectedLabelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "PingFang"),
                              controller: TabController(vsync: this, length: 4),
                              tabs: <Widget>[
                                ...["商品", "评价", "详情", "推荐"].map((item) {
                                  return Text(item);
                                }).toList(),
                              ],
                            ),
                          ),
                        ),
                        navigatorActionBar(
                          icon: Icons.share,
                          opacity: appBarOpacity,
                          iconSize: 18,
                          onTap: () {
                            Navigator.of(context).pop();
                          }
                        ),
                        navigatorActionBar(
                          icon: Icons.more_horiz,
                          opacity: appBarOpacity,
                          onTap: () {
                            Navigator.of(context).pop();
                          }
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  
                  child: Footer(),
                ),
              ],
            ),
    );
  }

  /*
       * 根据商品ID获取商品详情
       */
  Future<ItemInfoResponseEntity> getItemInfoById(id) async {
    var res = await RequestUtil.getInstance().post(Api.ItemInfo);
    return EntityFactory.generateOBJ<ItemInfoResponseEntity>(res.data);
  }

  Future<ItemInfoResponseEntity> initItemInfo(String itemId) async {
    var _itemInfo = await this.getItemInfoById(itemId);
    this.setState(() {
      this.itemInfo = _itemInfo;
    });
    return _itemInfo;
  }

  navigatorActionBar({IconData icon, double opacity = 1, Function onTap, double iconSize = 28}) {
    return GestureDetector(
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Color.fromRGBO(99, 99, 99, 1 - opacity),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Icon(
          icon,
          color: opacity == 1
              ? ColorUtil.hexToColor("#2B2B2B")
              : Colors.white,
          size: iconSize,
        ),
      ),
      onTap: onTap,
    );
  }
}
