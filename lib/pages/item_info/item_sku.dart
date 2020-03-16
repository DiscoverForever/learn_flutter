import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/utils/color_util.dart';

class ItemSku extends StatefulWidget {
  final ItemInfoResponseFloorsData item;
  ItemSku({Key key, @required this.item}) : super(key: key);
  @override
  _ItemSkuState createState() => _ItemSkuState();
}

class _ItemSkuState extends State<ItemSku> {
  List<String> _selectedButtonIdList;

  @override
  void initState() {
    super.initState();
    this.setDefaultSelectButton();
  }

  /*
   * 设置默认选中规格按钮 
   */
  setDefaultSelectButton() {
    _selectedButtonIdList =
        widget.item?.colorSizeInfo?.colorSize?.map((colorSize) {
      return colorSize?.buttons[0].no;
    })?.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          header(),
          ...widget.item?.colorSizeInfo?.colorSize?.asMap()?.keys?.map((index) {
            return Column(
              children: <Widget>[
                skuItemHeader(
                    label: widget.item?.colorSizeInfo?.colorSize[index]?.title),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 10,
                  runSpacing: 10,
                  runAlignment: WrapAlignment.start,
                  children: <Widget>[
                    ...widget.item?.colorSizeInfo?.colorSize[index]?.buttons
                        ?.map((button) {
                      var isSelected =
                          _selectedButtonIdList[index] == button?.no;
                      return LimitedBox(
                        maxHeight: 24,
                        child: ChoiceChip(
                          label: Text(
                            button?.text,
                            style: TextStyle(
                              fontSize: 12,
                              color: isSelected ? Colors.red : Colors.black,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                          pressElevation: 0,
                          // labelStyle: TextStyle(
                          //   fontSize: 12,
                          //   color: isSelected ? Colors.red : Colors.black,
                          // ),
                          selectedColor: ColorUtil.hexToColor("#F9EDEB"),
                          selected: isSelected,
                          backgroundColor: ColorUtil.hexToColor("#F2F2F2"),
                          shape: isSelected
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(color: Colors.red, width: 1),
                                )
                              : null,
                          onSelected: (selected) {
                            setState(() {
                              _selectedButtonIdList[index] = button?.no;
                            });
                          },
                          // shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ],
                ),
              ],
            );
          })
        ],
      ),
    );
  }

  header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Image.network(
            widget.item?.wareImage[0]?.small,
            scale: 12,
          ),
        ),
        Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        text: widget.item?.priceLabel,
                        children: <TextSpan>[
                      TextSpan(
                          text: widget.item?.priceInfo?.jprice,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                Row(
                  children: <Widget>[
                    Text(
                      "${widget.item?.weightInfo?.title}${widget.item?.weightInfo?.content}",
                      style: TextStyle(
                          color: ColorUtil.hexToColor("#999"),
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      // TODO skuID取交集 暂时默认第一个
                      " 编号: ${widget.item?.colorSizeInfo?.colorSize[0]?.buttons[0]?.skuList[0]}",
                      style: TextStyle(
                          color: ColorUtil.hexToColor("#999"),
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  /*
   * sku头部
   */
  skuItemHeader({String label, Widget rightAction}) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.black,
            ),
          ),
          Container(
            child: rightAction,
          ),
        ],
      ),
    );
  }
}
