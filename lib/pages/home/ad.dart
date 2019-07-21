import 'package:flutter/material.dart';

class Ad extends StatefulWidget {
  final String bgImage;
  final String jumpUrl;

  Ad({Key key, @required this.bgImage, @required this.jumpUrl})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => AdState();
}

class AdState extends State<Ad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
      child: GestureDetector(
        child: Image.network(
          widget.bgImage,
          fit: BoxFit.fitWidth,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/webview', arguments: {
            'url': widget.jumpUrl,
          });
        },
      ),
//      child: IconButton(
//        icon: Image.network(
//          widget.bgImage,
//          fit: BoxFit.fitWidth,
//        ),
//        onPressed: () {
//          print('test');
//        },
//      ),
    );
  }
}
