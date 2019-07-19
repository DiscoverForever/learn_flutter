import 'package:flutter/material.dart';

class Floor extends StatefulWidget {
  List<dynamic> floorList;
  Floor({Key key, @required this.floorList}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FloorState();
}

class _FloorState extends State<Floor> {
  @override
  Widget build(BuildContext context) {
    final floors = widget.floorList.map((floor) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            child: Image.network(floor['icon']),
          ),
          Container(
            height: 18,
            margin: EdgeInsets.only(top: 6),
            child: Center(
              child: Text(
                floor['name'],
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      );
    });
    return Center(
      child: Container(
        // width: double.infinity,
        height: 300,
        child: GridView.count(
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          crossAxisCount: 5,
          childAspectRatio: 1,
          padding: EdgeInsets.all(3),
          children: floors.toList().length > 10 ? floors.toList().getRange(0, 10).toList() : floors.toList(),
        ),
      ),
    );
  }
}
