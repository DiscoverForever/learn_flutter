import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 卡片项
class CardItem extends StatefulWidget {
  // 列表项label
  final String label;
  // 卡片项插槽
  final Widget slot;
  // 尾部icon
  final Icon suffixIcon;
  final double height;
  final EdgeInsetsGeometry padding;
  final Color color;
  CardItem({Key key, this.label, this.slot, this.suffixIcon, this.height, this.padding = const EdgeInsets.fromLTRB(10, 10, 10, 10), this.color = Colors.white}) : super(key: key);
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: widget.padding,
      color: widget.color,
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: (() {
          List<Widget> widgetList = [];
          if (widget.label != null) {
            widgetList.add(Container(
              margin: EdgeInsets.only(
                right: 10,
              ),
              child: Text(
                widget.label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ));
          }
          if (widget.slot != null) {
            widgetList.add(Expanded(
              flex: 1,
              child: widget.slot,
            ));
          }
          if (widget.suffixIcon != null) {
            widgetList.add(widget.suffixIcon);
          }
          return widgetList;
        })(),
      ),
    );
  }
}
