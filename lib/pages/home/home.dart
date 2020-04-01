import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/bean/home/welcome_home.dart';
import 'package:learn_flutter/bean/item/recommend_item_response.dart';
import 'package:learn_flutter/pages/home/floor.dart';
import 'package:learn_flutter/pages/home/header.dart';
import 'package:learn_flutter/pages/home/item_list.dart';
import 'package:learn_flutter/pages/home/sliver_header.dart';
import 'package:learn_flutter/pages/home/swipper_image.dart';
import 'package:learn_flutter/utils/request_util.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/api/api.dart';
import 'item.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<FloorModelResultContentData> floorList = [];
  List<SwipperOptions> swipperOptionsList = [];
  List<WareInfo> itemList = [];
  String swipperBgImageUrl;
  bool loading = true;
  @override
  initState() {
    super.initState();
    init();
  }

  init() async {
    loading = true;
    await this.getFloorList();
    await this.getInitData();
    await this.getRecommendItemList();
    loading = false;
  }

  getFloorList() async {
    try {
      var response = await RequestUtil.getInstance().post(Api.appCenterInfo);
      this.setState(() {
        var res = EntityFactory.generateOBJ<FloorModelEntity>(response.data);
        floorList = res.result.content.data;
      });
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  /// 获取初始化数据
  getInitData() async {
    var response = await RequestUtil.getInstance().post(Api.home);
    var data = EntityFactory.generateOBJ<WelcomeHome>(response.data);
    this.setState(() {
      var swipperList =
          data.floorList[0]?.content != null ? data.floorList[0]?.content : [];
      var list = (swipperList as List).map((val) {
        return SwipperOptions(
            imageUrl: val['horizontalImag'],
            jumpUrl: val['jump']['params']['url']);
      });
      swipperBgImageUrl = data.topBgImgBig;
      swipperOptionsList = list.toList();
    });
  }

  /// 获取商品推荐列表
  getRecommendItemList() async {
    var res = await RequestUtil.getInstance().post(Api.recommendItemList);
    var data = EntityFactory.generateOBJ<RecommendItemResponse>(res.data);
    this.setState(() {
      this.itemList = data.wareInfoList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading ? Center(child: CircularProgressIndicator()) : Column(
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverHeader(),
                SliverToBoxAdapter(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(swipperBgImageUrl),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter),
                        ),
                        child: SwipperImage(
                          width: MediaQuery.of(context).size.width,
                          // backgroundImage: NetworkImage(swipperBgImageUrl),
                          swipperOptionsList: swipperOptionsList,
                        ),
                      ),
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              "https://m.360buyimg.com/mobilecms/s1125x435_jfs/t1/69613/13/4742/97849/5d2ef146Eaf504529/35e8041bf0dac25d.jpg.dpg.webp"),
                          fit: BoxFit.fitWidth,
                        )),
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Floor(
                              floorList: floorList.length >= 10
                                  ? floorList.getRange(0, 10)?.toList()
                                  : [],
                            ),
                            Floor(
                              floorList: floorList.length >= 20
                                  ? floorList.getRange(10, 20)?.toList()
                                  : [],
                            ),
                          ],
                        ),
                      ),
                      Image.network(
                          "https://m.360buyimg.com/mobilecms/jfs/t1/55537/13/5336/79992/5d2eeea7E5b9166b0/57bda184a914540a.jpg!q70.jpg.dpg.webp"),
                    ],
                  ),
                ),
                SliverPadding(
                  sliver: SliverGrid(
                    //Grid
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Grid按两列显示
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1 / 1.35,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建子widget
                        return Item(
                          item: this.itemList[index],
                        );
                      },
                      childCount: this.itemList.length,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
