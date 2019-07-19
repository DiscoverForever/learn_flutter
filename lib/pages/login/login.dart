import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  var username = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: double.infinity,
              height: 100,
              child: Text(
                '账号密码',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: '用户名',
                ),
                onChanged: (value) {
                  this.setState(() {
                    username = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: '密码',
                  ),
                  onChanged: (value) {
                    this.setState(() {
                      password = value;
                    });
                  }),
            ),
            Container(
              width: 380.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print('登录成功');
                  } else {
                    print('登录失败');
                  }
                },
              ),
            ),
            Text('$username $password'),
          ],
        ),
      ),
    );
  }
}
