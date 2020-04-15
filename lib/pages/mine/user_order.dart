import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

class UserOrder extends StatelessWidget {
  final List<UserInfoResponseFloorsDataOrderlist> orderList;
  final void Function() onTap;
  UserOrder({Key key, this.orderList, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ...orderList?.map((order) {
            return Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.network(
                        order.safeImage,
                        width: 35,
                      ),
                      Text(
                        order?.title?.value,
                        style: TextStyle(
                          color: order?.title?.color == null
                              ? ColorUtil.hexToColor(order?.title?.color)
                              : Color(0xFF2e2e2e),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
