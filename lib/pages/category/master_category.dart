import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/bean/category/category_response_entity.dart';
import 'package:learn_flutter/service/category_service.dart';

class MasterCategory extends StatefulWidget {
  final Null Function(int) onChildClick;

  MasterCategory({Key key, @required this.onChildClick}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MasterCategoryState();
}

class MasterCategoryState extends State<MasterCategory> {
  List<CategoryResponseCatelogylist> categoryList = [];
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    this.getCategory();
  }

  // 获取分类
  getCategory() async {
    var res = await CategoryService().getMasterCategory();
    this.setState(() {
      categoryList = res.catelogyList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 80,
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 40,
                        color: this.activeIndex == index
                            ? Color(0xFFFEFFFF)
                            : Color(0xFFF1F2F3),
                        child: Center(
                          child: Text(
                            this.categoryList[index].name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: this.activeIndex == index ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        child: Offstage(
                          offstage: this.activeIndex != index,
                          child: Container(
                            width: 3,
                            height: 20,
                            color: Color(0xFFDA3E27),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    this.setState(() {
                      this.activeIndex = index;
                      widget.onChildClick(this.categoryList[index].cid);
                    });
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
