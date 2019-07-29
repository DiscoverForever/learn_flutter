import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';

class Floor extends StatefulWidget {
  List<FloorModelResultContentData> floorList;
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
            child: Image.network(floor.icon),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                floor.name,
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
        width: MediaQuery.of(context).size.width,
        height: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://m.360buyimg.com/mobilecms/s1125x435_jfs/t1/69613/13/4742/97849/5d2ef146Eaf504529/35e8041bf0dac25d.jpg.dpg.webp',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: GridView.count(
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          crossAxisCount: 5,
          childAspectRatio: 1,
          padding: EdgeInsets.all(3),
          children: floors.toList(),
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
