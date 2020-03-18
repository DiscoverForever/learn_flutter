import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/pages/item_info/cholice_chip_select.dart';
import 'package:learn_flutter/utils/color_util.dart';

import 'counter.dart';

class ItemSku extends StatefulWidget {
  final ItemInfoResponseFloorsData item;
  ItemSku({Key key, @required this.item}) : super(key: key);
  @override
  _ItemSkuState createState() => _ItemSkuState();
}

class _ItemSkuState extends State<ItemSku> {
  List<String> _selectedButtonIdList;
  String currentSkuId;
  List<List<String>> selectedSkuList;
  @override
  void initState() {
    super.initState();
    this.setDefaultSelectButton();
    this.setDefaultSelectSku();
    this.updateMatchedSku();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(
        children: <Widget>[
          header(),
          LimitedBox(
            maxHeight: MediaQuery.of(context).size.height * 0.8 - 145,
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
                          label: widget
                              .item?.colorSizeInfo?.colorSize[index]?.title,
                        ),
                        CholiceChipSelect(
                          selectOptions: widget
                              .item?.colorSizeInfo?.colorSize[index]?.buttons
                              ?.map((product) {
                            return SelectOption(
                              id: product?.no,
                              label: product?.text,
                              value: product?.skuList,
                            );
                          })?.toList(),
                          selectedId: _selectedButtonIdList[index],
                          onSelect: (selected, isSelected) {
                            _selectedButtonIdList[index] = selected?.id;
                            selectedSkuList[index] =
                                isSelected ? selected.value : [];
                            updateMatchedSku();
                          },
                        ),
                      ],
                    );
                  }),
                  skuItemHeader(
                    label: "数量",
                    rightAction: Counter(
                      defaultValue: 1,
                      min: 1,
                      max: 200,
                    ),
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
                          child: CholiceChipSelect(
                            selectOptions: warranty?.products?.map((product) {
                              return SelectOption(
                                id: product?.platformPid?.toString(),
                                label:
                                    "${product?.sortName} | ${product?.sortName}",
                              );
                            })?.toList(),
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
                          child: CholiceChipSelect(
                            selectOptions: warranty?.products?.map((product) {
                              return SelectOption(
                                id: product?.serviceSku,
                                label:
                                    "${product?.serviceSkuShortName} | ${product?.serviceSkuPrice}",
                              );
                            })?.toList(),
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
      ),
      Positioned(
        top: 0,
        right: 0,
        child: close(onTap: () {
          Navigator.of(context).pop();
        }),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: footer(),
      ),
    ]);
  }

  /*
   * 设置默认选中颜色尺码
   */
  setDefaultSelectSku() {
    selectedSkuList = widget?.item?.colorSizeInfo?.colorSize?.map((colorSize) {
      return colorSize?.buttons[0]?.skuList;
    })?.toList();
  }

  /*
   * 设置默认选中按钮 
   */
  setDefaultSelectButton() {
    _selectedButtonIdList =
        widget.item?.colorSizeInfo?.colorSize?.map((colorSize) {
      return colorSize?.buttons[0].no;
    })?.toList();
  }

  updateMatchedSku() {
    setState(() {
      currentSkuId = getMatchedSku();
      print(currentSkuId);
    });
  }

  /*
   * 根据用户已选颜色尺码匹配出唯一sku
   */
  String getMatchedSku() {
    return selectedSkuList.reduce((current, next) {
      return current.toSet().intersection(next.toSet()).toList();
    }).first;
  }

  /*
   * 关闭按钮
   */
  close(
      {double size = 20,
      Color backgroundColor = const Color(0xFFF2F2F2),
      Color iconColor = Colors.black,
      Function onTap}) {
    return GestureDetector(
        child: Container(
          width: size,
          height: size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorUtil.hexToColor("#F2F2F2"),
            borderRadius: BorderRadius.all(Radius.circular(size / 2)),
          ),
          child: Icon(
            Icons.close,
            color: Colors.black,
            size: 15,
          ),
        ),
        onTap: onTap);
  }

  header() {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Image.network(
                widget.item?.wareImage[0]?.small,
                scale: 12,
              ),
            ),
            onTap: () {
              Fluttertoast.showToast(msg: "heaer");
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
                        " 编号:${currentSkuId}",
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
      ),
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

  footer() {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: 65,
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "加入购物车",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: ColorUtil.hexToColor("#EB532C"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "立即购买",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: ColorUtil.hexToColor("#F4BC41"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
