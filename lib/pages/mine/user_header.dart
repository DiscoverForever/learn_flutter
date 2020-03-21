import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/widgets/tag.dart';

class UserHeader extends StatelessWidget {
  final UserInfoResponseFloorsData userInfo;
  UserHeader({Key key, this.userInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(this.userInfo.bgImgInfo.bgImg),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              header(),
              floor(),
              vipCard(
                bgUrl: this.userInfo?.blackCardInfo?.imgUrl,
                maskImageUrl: this.userInfo?.bgImgInfo?.radianImg,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ],
      ),
    );
  }

  header() {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: avatar(this.userInfo.userInfoSns.imgUrl),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    this.userInfo.userInfoSns.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                      color: Color(0xFFC14446),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      alignment: Alignment.centerLeft,
                      height: 12,
                      child: Text(
                        this.userInfo.userLevelInfo.userLevelClass,
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  ...userInfo?.jingxiangCredit?.map((item) {
                    return Tag(
                      color: Color(0xFFE54C4D),
                      borderColor: Colors.black12,
                      borderWidth: 0,
                      margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                      height: 20,
                      text: Text(
                        "${item?.text}${item?.clickMta?.eventParam} ▸",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    );
                  })
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  floor() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ...["商品关注", "店铺关注", "喜欢的内容", "浏览记录"].map((text) {
            return Container(
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  Text(
                    Random().nextInt(100).toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }

  avatar(String url) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: CircleAvatar(
        child: ClipOval(
          child: Image.network(
            url,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  vipCard({String bgUrl, double width, String maskImageUrl}) {
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: 50,
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(bgUrl),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                    this.userInfo?.blackCardInfo?.leftImg,
                    height: 20,
                    width: 60,
                  ),
                  RichText(
                    text: TextSpan(
                      text: ' | ',
                      style: TextStyle(
                        color: Color(0xFFE0DD95),
                        fontSize: 10,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: this.userInfo?.blackCardInfo?.midText,
                          style: TextStyle(
                            color: Color(0xFFE0DD95),
                            fontSize: 10,
                            fontFamily: "PingFang",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
                width: 70,
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.only(left: 5, right: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  color: Color(0xFFF5E27E),
                  child: Text(
                    "${this.userInfo.blackCardInfo.rightText} ▸",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          width: width,
          child: Image.network(maskImageUrl),
        ),
      ],
    );
  }
}
