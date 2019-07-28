import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/bean/home/welcome_home.dart';
import 'package:learn_flutter/pages/home/floor.dart';
import 'package:learn_flutter/pages/home/header.dart';
import 'package:learn_flutter/pages/home/item_list.dart';
import 'package:learn_flutter/pages/home/sliver_header.dart';
import 'package:learn_flutter/pages/home/swipper_image.dart';
import 'package:learn_flutter/utils/request_util.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/api/api.dart';
import 'ad.dart';
import 'item.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<FloorModelResultContentData> floorList = [];
  List<SwipperOptions> swipperOptionsList = [];
  String swipperBgImageUrl =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564260778041&di=035a5d4a7d370268e316035730a25a58&imgtype=0&src=http%3A%2F%2Fcdn.lizhi.fm%2Fradio_cover%2F2014%2F06%2F18%2F12383567000424964.jpg';
  @override
  initState() {
    super.initState();
    this.getFloorList();
    this.getInitData();
  }

  getFloorList() async {
    var response = await RequestUtil.getInstance().post(Api.appCenterInfo);
    this.setState(() {
      var res = EntityFactory.generateOBJ<FloorModelEntity>(response.data);
      floorList = res.result.content.data;
    });
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
      this.swipperBgImageUrl = data.topBgImgBig;
      this.swipperOptionsList = list.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverHeader(),
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SwipperImage(
                            width: MediaQuery.of(context).size.width,
                            backgroundImageUrl: this.swipperBgImageUrl,
                            swipperOptionsList: this.swipperOptionsList,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(this.swipperBgImageUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // Image.network('https://m.360buyimg.com/mobilecms/s1125x939_jfs/t1/57927/10/5246/102061/5d2ef10bEf2debf2e/93d987f05fa960ea.jpg.dpg.webp'),
                    Container(
                      height: 145,
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
                    Ad(
                      bgImage:
                          'https://m.360buyimg.com/mobilecms/jfs/t1/55537/13/5336/79992/5d2eeea7E5b9166b0/57bda184a914540a.jpg!q70.jpg.dpg.webp',
                      jumpUrl:
                          'https://pro.m.jd.com/mall/active/EenpY3YPwqzMVxgzmvrmiPxXZfD/index.html',
                    ),
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
                    // childAspectRatio: 4.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      //创建子widget
                      return Item();
                    },
                    childCount: 30,
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        )
      ],
    );
  }
}
