import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Movie extends StatefulWidget {
  final List<String> list = List<String>.generate(5, (i) => '$i');
  @override
  State<StatefulWidget> createState() => MovieState();
}

class MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    final test = widget.list.map((value) => Image.network(
        'https://p0.meituan.net/128.180/movie/99b46395a2675e1cf3510032a1088fa54610159.jpg',
        fit: BoxFit.cover,
      ));
    return Scaffold(
      appBar: AppBar(
        title: Text('电影'),
      ),
      body: Center(
        child: GridView.count(
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          padding: EdgeInsets.all(3),
          children: test.toList(),
        ),
      ),
    );
  }
}