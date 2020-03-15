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
import 'package:webview_flutter/webview_flutter.dart';

import 'card_item.dart';
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
  @override
  void initState() {
    super.initState();
    this.initItemInfo(widget.itemId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: TabController(vsync: this, length: 4),
          tabs: <Widget>[
            Text(
              "商品",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 3,
              ),
            ),
            Text(
              "评价",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 3,
              ),
            ),
            Text(
              "详情",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 3,
              ),
            ),
            Text(
              "推荐",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 3,
              ),
            ),
          ],
        ),
        toolbarOpacity: 1,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 0,
              right: 5,
            ),
            child: Icon(
              Icons.share,
              size: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Icon(
              Icons.more_horiz,
              size: 20,
            ),
          ),
        ],
      ),
      body: itemInfo == null
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            )
          : SingleChildScrollView(
              child: Container(
                color: ColorUtil.hexToColor("#F2F2F2"),
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
                    Footer(),
                    // 商品详情
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

  initItemInfo(String itemId) async {
    var _itemInfo = await this.getItemInfoById(itemId);
    this.setState(() {
      this.itemInfo = _itemInfo;
    });
  }
}
