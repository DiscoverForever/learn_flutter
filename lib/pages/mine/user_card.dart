import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';
import 'package:learn_flutter/widgets/floor.dart';

class UserCard extends StatelessWidget {
  final List<UserInfoResponseFloorsDataNode> tools;
  final String title;
  UserCard({Key key, this.tools, this.title = ""}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 30,
            margin: EdgeInsets.only(left: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text("查看更多",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF848484),
                        )),
                    Icon(
                      Icons.navigate_next,
                      size: 12,
                      color: Color(0xFF848484),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
          Floor(
            floorOptions: tools.map((tool) {
              return FloorOption(
                icon: Container(
                  child: Image.network(
                    tool.safeImage,
                    width: 40,
                    height: 40,
                  ),
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                ),
                title: tool.title?.value == null ?  "" : tool.title?.value,
                titleColor: ColorUtil.hexToColor(tool.title.color),
                subtitle: tool.subtitle?.value == null ?  "" : tool.subtitle?.value,
                subtitleColor: ColorUtil.hexToColor(tool.subtitle.color),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
