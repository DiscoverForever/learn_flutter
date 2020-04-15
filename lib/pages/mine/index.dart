import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/pages/mine/user_card.dart';
import 'package:learn_flutter/pages/mine/user_header.dart';
import 'package:learn_flutter/pages/mine/user_order.dart';
import 'package:learn_flutter/pages/mine/user_wallet.dart';
import 'package:learn_flutter/utils/request_util.dart';

class Mine extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mine> with TickerProviderStateMixin {
  double appBarOpacity = 0;
  Future<UserInfoResponseEntity> userInfoFuture;
  @override
  void initState() {
    super.initState();
    this.userInfoFuture = getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: userInfoFuture,
            builder: (BuildContext context,
                AsyncSnapshot<UserInfoResponseEntity> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  // 请求失败，显示错误
                  return Text("Error: ${snapshot.error}");
                } else {
                  // 请求成功，显示数据
                  return NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification notification) {
                      print(notification.metrics.pixels);
                      var scrollY = notification.metrics.pixels;
                      if (scrollY > 0) {
                        var opacity = scrollY / 80;
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
                      child: Column(
                        children: <Widget>[
                          UserHeader(
                            userInfo: snapshot.data.floors[0]?.data,
                          ),
                          UserOrder(
                            orderList: snapshot.data.floors[0]?.data?.orderList,
                            onTap: () {
                              Navigator.of(context).pushNamed('/order_list');
                            },
                          ),
                          UserWallet(
                            walletList:
                                snapshot.data.floors[0]?.data?.walletList,
                          ),
                          UserCard(
                              title: snapshot.data.floors[1]?.data?.extendInfo
                                  ?.header?.labelName,
                              tools: snapshot.data.floors[1]?.data?.nodes),
                          UserCard(
                            title: snapshot.data.floors[0]?.data?.extendInfo
                                ?.header?.labelName,
                            tools: snapshot.data.floors[0]?.data?.nodes,
                          ),
                        ],
                      ),
                    ),
                  );
                }
              } else {
                // 请求未结束，显示loading
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: AppBar(
              title: Text(
                appBarOpacity >= 0.7 ? "我的" : "",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              leading: appBarOpacity >= 0.7
                  ? Container(
                      padding: EdgeInsets.all(12),
                      child: ClipOval(
                        child: Image.network(
                          "https://storage.360buyimg.com/i.imageUpload/494dccc6eedad0a1b1a631353834363036343330373230_big.jpg",
                        ),
                      ),
                    )
                  : Container(),
              actions: <Widget>[
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "设置",
                      style: TextStyle(
                        color: appBarOpacity == 1 ? Colors.black : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/settings');
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: appBarOpacity == 1 ? Colors.black : Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                )
              ],
              backgroundColor: Color.fromRGBO(255, 255, 255, appBarOpacity),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }

  /*
   * 获取用户信息
   */
  Future<UserInfoResponseEntity> getUserInfo() async {
    var res = await RequestUtil.getInstance().post(Api.UserInfo);
    return EntityFactory.generateOBJ<UserInfoResponseEntity>(res.data);
  }
}
