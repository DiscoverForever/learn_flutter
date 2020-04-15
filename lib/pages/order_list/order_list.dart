import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/order_list/order_card.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController tabBarController =
        TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text('我的订单'),
        elevation: 0,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.only(bottom: 8),
            borderSide: BorderSide(color: Colors.red, width: 3),
          ),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          controller: tabBarController,
          tabs: <Tab>[
            ...['全部', '待付款', '待收货', '已完成', '已取消']
                .map((item) => Tab(text: item))
                .toList(),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabBarController,
        children: <Widget>[
          ...List.generate(
            5,
            (index) => ListView.builder(
              itemBuilder: (context, index) => OrderCard(),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
