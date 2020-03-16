import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    return Column(
      children: <Widget>[
        header(),
        LimitedBox(
          maxHeight: MediaQuery.of(context).size.height - 270,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ...widget.item?.colorSizeInfo?.colorSize
                    ?.asMap()
                    ?.keys
                    ?.map((index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      skuItemHeader(
                        label:
                            widget.item?.colorSizeInfo?.colorSize[index]?.title,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        spacing: 10,
                        runSpacing: 15,
                        runAlignment: WrapAlignment.start,
                        children: <Widget>[
                          ...widget
                              .item?.colorSizeInfo?.colorSize[index]?.buttons
                              ?.map((button) {
                            return customCholiceChip(
                                text: button?.text,
                                isSelected:
                                    _selectedButtonIdList[index] == button?.no,
                                onSelected: (isSelected) {
                                  setState(() {
                                    _selectedButtonIdList[index] = button?.no;
                                  });
                                });
                          }),
                        ],
                      ),
                    ],
                  );
                }),
                skuItemHeader(
                  label: "数量",
                  rightAction: counter(defautValue: 1),
                ),
                skuItemHeader(label: widget?.item?.yanBaoInfo?.yanBaoTitle),
                ...widget.item?.yanBaoInfo?.yanBaoList?.map((warranty) {
                  return Column(
                    children: <Widget>[
                      subHeader(
                        leftIcon: Image.network(
                          warranty?.imgurl,
                          width: 15,
                          height: 15,
                        ),
                        leftLabel: warranty?.sortName,
                        rightIcon: Icon(
                          Icons.info_outline,
                          size: 15,
                          color: Colors.red,
                        ),
                        rightLabel: "服务介绍",
                        centerflexSlot: Text(""),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 10,
                          runSpacing: 15,
                          runAlignment: WrapAlignment.start,
                          children: <Widget>[
                            ...warranty?.products?.map((product) {
                              return customCholiceChip(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          50,
                                  text:
                                      "${product?.sortName} | ${product?.price}",
                                  isSelected: false,
                                  onSelected: (isSelected) {
                                    setState(() {});
                                  });
                            }),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
                skuItemHeader(
                    label: widget?.item?.jdSerPlusInfo?.jdSerPlusTitle),
                ...widget.item?.jdSerPlusInfo?.jdSerPlusList?.map((warranty) {
                  return Column(
                    children: <Widget>[
                      subHeader(
                        leftIcon: Image.network(
                          warranty?.scIconUrl,
                          width: 15,
                          height: 15,
                        ),
                        leftLabel: warranty?.scName,
                        rightIcon: Icon(
                          Icons.info_outline,
                          size: 15,
                          color: Colors.red,
                        ),
                        rightLabel: "服务介绍",
                        centerflexSlot: Text(""),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 10,
                          runSpacing: 15,
                          runAlignment: WrapAlignment.start,
                          children: <Widget>[
                            ...warranty?.products?.map((product) {
                              return customCholiceChip(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          50,
                                  text:
                                      "${product?.serviceSkuShortName} | ${product?.serviceSkuPrice}",
                                  isSelected: false,
                                  onSelected: (isSelected) {
                                    setState(() {});
                                  });
                            }),
                          ],
                        ),
                      ),
                    ],
                  );
                })
              ],
            ),
          ),
        ),
      ],
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
                          ),
                        ),
                      ]),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "${widget.item?.weightInfo?.title}:${widget.item?.weightInfo?.content}",
                      style: TextStyle(
                          color: ColorUtil.hexToColor("#999"),
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      // TODO skuID取交集 暂时默认第一个
                      " 编号:${widget.item?.colorSizeInfo?.colorSize[0]?.buttons[0]?.skuList[0]}",
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

  subHeader({
    Widget leftIcon,
    String leftLabel,
    Widget rightIcon,
    String rightLabel,
    Widget centerflexSlot,
  }) {
    return SizedBox(
      height: 40,
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(children: <Widget>[
              leftIcon,
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  leftLabel,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(child: centerflexSlot),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Text(
                    rightLabel,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                rightIcon
              ],
            ),
          ),
        ],
      ),
    );
  }

  customCholiceChip({
    String text,
    bool isSelected,
    double width,
    double height = 26,
    void Function(bool) onSelected,
  }) {
    return SizedBox(
      height: height,
      child: ChoiceChip(
        label: SizedBox(
          width: width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 8),
        pressElevation: 0,
        selectedColor: ColorUtil.hexToColor("#F9EDEB"),
        selected: isSelected,
        backgroundColor: ColorUtil.hexToColor("#F2F2F2"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
              color: isSelected ? Colors.red : Colors.transparent, width: 1),
        ),
        onSelected: onSelected,
        // shape: BoxShape.circle,
      ),
    );
  }

  /*
   * 计数器
   */
  counter({int defautValue = 1}) {
    return Row(
      children: <Widget>[
        // Icon(Icons.add),
        LimitedBox(
          maxWidth: 140,
          maxHeight: 25,
          child: TextField(
            keyboardType: TextInputType.number,
            maxLines: 1,
            onTap: () {},
            textAlign: TextAlign.center,
            controller: TextEditingController(text: "1"),
            decoration: InputDecoration(
              filled: true,
              fillColor: ColorUtil.hexToColor("#F2F2F2"),
              contentPadding: EdgeInsets.fromLTRB(2, 2, 2, 0),
              border: InputBorder.none,
              prefixIcon: Container(
                width: 20,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10),
                color: Colors.white,
                child: Icon(
                  Icons.remove,
                  size: 15,
                  color: ColorUtil.hexToColor("#999999"),
                ),
              ),
              suffixIcon: Container(
                width: 20,
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                color: Colors.white,
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: ColorUtil.hexToColor("#999999"),
                ),
              ),
            ),
          ),
        ),
        // Icon(Icons.remove),
      ],
    );
  }

  /*
   * sku头部
   */
  skuItemHeader({@required String label, Widget rightAction}) {
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
              fontWeight: FontWeight.bold,
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
