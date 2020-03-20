import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/pages/mine/user_header.dart';
import 'package:learn_flutter/pages/mine/user_order.dart';
import 'package:learn_flutter/pages/mine/user_wallet.dart';
import 'package:learn_flutter/utils/request_util.dart';

class Mine extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mine> {
  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: getUserInfo(),
            builder: (BuildContext context,
                AsyncSnapshot<UserInfoResponseEntity> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  // 请求失败，显示错误
                  return Text("Error: ${snapshot.error}");
                } else {
                  // 请求成功，显示数据
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        UserHeader(
                          userInfo: snapshot.data.floors[0]?.data,
                        ),
                        UserOrder(
                          orderList: snapshot.data.floors[0]?.data?.orderList,
                        ),
                        UserWallet(
                          walletList: snapshot.data.floors[0]?.data?.walletList
                        ),
                      ],
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
                "我的",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              leading: Icon(
                Icons.email,
                color: Colors.white,
                size: 20,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                )
              ],
              backgroundColor: Colors.transparent,
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
