import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/shopcart/shopcart_response_entity.dart';
import 'package:learn_flutter/pages/shopcart/shopcart_card.dart';
import 'package:learn_flutter/service/shopcart_service.dart';

class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> with TickerProviderStateMixin {
  ShopcartResponseEntity shopcartResponse;
  @override
  void initState() {
    super.initState();
    initShopcartList();
  }

  initShopcartList() async {
    var res = await ShopcartService.getShopcartList();
    setState(() {
      this.shopcartResponse = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "购物车",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        child: shopcartResponse == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius(Radius.circular(20)),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: TabBar(
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Pingfang",
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: TextStyle(
                          color: Colors.red,
                          fontFamily: "Pingfang",
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.red,
                        controller: TabController(
                            length: 4, initialIndex: 0, vsync: this),
                        tabs: <Widget>[
                          ...["全部(2)", "降价(0)", "常卖(0)", "分类"].map((item) {
                            return Text(item);
                          }).toList()
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 0,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            ShopcartCard(
                              cartInfo: shopcartResponse.cartInfo,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
      ),
    );
  }
}
