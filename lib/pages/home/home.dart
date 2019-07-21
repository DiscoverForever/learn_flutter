import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/pages/home/floor.dart';
import 'package:learn_flutter/pages/home/header.dart';
import 'package:learn_flutter/pages/home/item_list.dart';
import 'package:learn_flutter/pages/home/swipper_image.dart';
import 'package:learn_flutter/utils/request_util.dart';
import 'package:learn_flutter/bean/floor_model_entity.dart';
import 'item.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<FloorModelResultContentData> floorList = [];
  @override
  initState() {
    super.initState();
    getFloorList();
  }

  getFloorList() async {
    var res = await RequestUtil.getInstance().post('/client.action%3FfunctionId%3DnewAppCenterInfo');
    setState(() {
      var floor = FloorModelEntity.fromJson(res.data);
      floorList = floor.result.content.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(''),
        // ),
        body: Column(
          children: <Widget>[
            Container(
              height: 48,
              color: Colors.red,
            ),
            Header(),
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: <Widget>[
                        SwipperImage(),
                        Floor(
                          floorList: floorList,
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'you click me',
            );
          },
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (event) {
            this.setState(() {
              currentIndex = event;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('分类'),
              activeIcon: Icon(Icons.view_quilt),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.near_me),
              title: Text('发现'),
              activeIcon: Icon(Icons.navigation),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('购物车'),
              activeIcon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(
                '我的',
              ),
              activeIcon: Icon(Icons.face),
            ),
          ],
        ));
  }
}
