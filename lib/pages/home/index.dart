import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';
import 'package:learn_flutter/pages/category/category.dart';
import 'package:learn_flutter/pages/home/home.dart';
import 'package:learn_flutter/pages/mine/index.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<Index> {
  int currentIndex = 0;
  Widget currentView;
  Map<int, Widget> pageMap = {
    0: MyHomePage(),
    1: Category(),
    2: null,
    3: null,
    4: Mine()
  };
  List<FloorModelResultContentData> floorList = [];

  @override
  initState() {
    super.initState();
    this.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(''),
        // ),
        body: pageMap[this.currentIndex],
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Fluttertoast.showToast(
        //       msg: 'you click me',
        //     );
        //   },
        //   child: Center(
        //     child: Icon(Icons.add),
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (event) {
            this.setState(() {
              this.currentIndex = event;
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
