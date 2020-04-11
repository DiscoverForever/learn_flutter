import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:learn_flutter/pages/home/index.dart';
import 'package:learn_flutter/service/login_service.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  var username = '';
  var password = '';
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
          },
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20),
            child: Text(
              "帮助",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 80,
              child: FlutterLogo(
                size: 80,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '请输入用户名',
                ),
                onChanged: (value) {
                  this.setState(() {
                    username = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '请输入密码',
                  suffixIcon: GestureDetector(
                    child: Icon(Icons.remove_red_eye, color: Colors.black26),
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                ),
                obscureText: !showPassword,
                onChanged: (value) {
                  this.setState(() {
                    password = value;
                  });
                },
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: RaisedButton(
                color: Colors.red,
                disabledColor: Color(0xFFEEB4B8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  '登录',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                onPressed:
                    (!isNullOrEmpty(username) && !isNullOrEmpty(username))
                        ? _handleLogin
                        : null,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("账号密码登录"),
                Text("新用户注册"),
              ],
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  try {
                    await LoginService.register(username, password);
                    Fluttertoast.showToast(msg: "注册成功");
                  } on LCException catch (error) {
                    Fluttertoast.showToast(msg: error.message);
                  } catch (e) {
                    Fluttertoast.showToast(msg: "未知错误");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _handleLogin() async {
    try {
      await LoginService.login(username, password);
      Navigator.pushNamed(context, '/');
    } on LCException catch (error) {
      Fluttertoast.showToast(msg: error.message);
    } catch (e) {
      Fluttertoast.showToast(msg: "未知错误");
    }
  }
}
