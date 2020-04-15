import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final double height;
  final double width;
  OrderCard({Key key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    Text(
                      'xxxxx旗舰店',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next, size: 16,)
                  ]),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                    onPressed: null,
                    child: Text('已取消'),
                    padding: EdgeInsets.only(left: 5, right: 5),
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(12.5)),
                  child: Icon(
                    CupertinoIcons.delete,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: Stack(children: <Widget>[
              Container(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.network(
                          'https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/86172/23/15312/132452/5e6e1185E709e5398/0f1eff851a27b570.jpg!q70.dpg.webp'),
                      margin: index == 4
                          ? EdgeInsets.only(right: 80)
                          : EdgeInsets.zero,
                    );
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 80,
                child: Container(
                  width: 0,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 10)
                      ]),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.98),
                        Color.fromRGBO(255, 255, 255, 1)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '¥8999.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('共5件', textAlign: TextAlign.right)
                      ]),
                ),
              ),
            ]),
          ),
          Container(
            height: 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    width: 80,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        '去支付',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.red, width: 0.5),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
