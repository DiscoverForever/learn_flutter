import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

class UserWallet extends StatelessWidget {
  final List<UserInfoResponseFloorsDataWalletlist> walletList;
  UserWallet({Key key, this.walletList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ...walletList.map((wallet) {
              return Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: wallet?.contentType == 0
                            ? Image.network(
                                wallet?.safeImage,
                                width: 35,
                                height: 35,
                              )
                            : Text(
                                Random().nextInt(100).toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Column(
                          children: <Widget>[
                            Text(
                              wallet.title.value,
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorUtil.hexToColor(wallet.title.color),
                              ),
                            ),
                            Text(
                              wallet.subtitle.value,
                              style: TextStyle(
                                fontSize: 10,
                                color:
                                    ColorUtil.hexToColor(wallet.subtitle.color),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ));
            })
          ],
        ));
  }
}
