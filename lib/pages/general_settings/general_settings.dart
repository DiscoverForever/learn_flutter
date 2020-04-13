import 'package:flutter/material.dart';

class GeneralSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text('通用', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            ListTile(
              title: Text('夜间模式', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Switch(value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text('消息推送设置', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('隐私设置', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('WLAN环境下自动播放视频', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Switch(value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text('截屏弹出分享弹窗', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Switch(value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text('网络诊断', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('清除本地缓存', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Text('50.5M'),
            ),
            ListTile(
              title: Text('切换站点', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.navigate_next),
            ),
          ]),
        ),
      ),
    );
  }
}
