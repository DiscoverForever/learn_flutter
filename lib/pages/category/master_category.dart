import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/service/category_service.dart';
import 'package:learn_flutter/bean/category/category_entity.dart'
    as CategoryBean;

class MasterCategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MasterCategoryState();
}

class MasterCategoryState extends State<MasterCategory> {
  CategoryBean.CategoryEntity category;
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    this.getCategory();
  }

  // 获取分类
  getCategory() async {
    var res = await CategoryService().getCategory();
    this.setState(() {
      this.category = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Container(
          width: 120,
          // color: Color(0xFFf8f8f8),
          child: ListView.builder(
            itemCount: this.category?.data?.category?.length == null
                ? 0
                : this.category.data.category.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    color: this.activeIndex == index
                        ? Colors.white
                        : Color(0xFFf8f8f8),
                    child: Center(
                      child: Text(this.category.data.category[index].name),
                    ),
                  ),
                  onTap: () {
                    this.setState(() {
                      this.activeIndex = index;
                    });
                  },
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
