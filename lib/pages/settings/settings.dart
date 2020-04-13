import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/settings/settings_response_entity.dart';
import 'package:learn_flutter/service/settings_service.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  SettingsResponseEntity settings;
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    var settings = await SettingsService.getSettings();
    print(settings);
    setState(() {
      this.settings = settings;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text('账户设置', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: settings == null
          ? Center(child: Center(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _userInfo(settings.floors
                      .firstWhere(
                          (item) => item.bId == 'settingsFloors_flo_389')
                      .data),
                  ...settings.floors
                      .where((item) => ![
                            'settingsUserInfo_flo_388',
                            'settingsFloors_flo_389'
                          ].contains(item.bId))
                      .map(
                        (item) => _settingCard(
                          item.data.nodes,
                          onTap: (item) => Navigator.of(context)
                              .pushNamed('/general_settings'),
                        ),
                      )
                      .toList(),
                  GestureDetector(
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 10, bottom: 30),
                      child: FlatButton(
                        onPressed: null,
                        child: Text(
                          '退出登录',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/login', (route) => false);
                    },
                  ),
                ],
              ),
            ),
    );
  }

  _userInfo(SettingsResponseFloorsData address) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://storage.360buyimg.com/i.imageUpload/494dccc6eedad0a1b1a631353834363036343330373230_big.jpg',
                  scale: 1.8),
            ),
            title: Text('Flutter Admin', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            subtitle: Text('用户名: Flutter Admin'),
            trailing: Icon(Icons.navigate_next),
          ),
          Offstage(
            offstage: address.nodes.length == 0,
            child: ListTile(
              title: Text(address.nodes.first != null
                  ? address.nodes.first.title.value
                  : '', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }

  _settingCard(List<SettingsResponseFloorsDataNode> nodes,
      {void Function(SettingsResponseFloorsDataNode) onTap}) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 1,),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: nodes.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nodes[index].title.value, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, fontFamily: 'PingFang', color: Colors.black)),
            subtitle: Text(nodes[index].subtitle.value),
            trailing: Icon(Icons.navigate_next),
            onTap: () => onTap(nodes[index]),
          );
        },
      ),
    );
  }
}
