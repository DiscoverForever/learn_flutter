import 'package:flutter/widgets.dart';

import 'item.dart';

class ItemList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ItemListState();
}

class ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}
