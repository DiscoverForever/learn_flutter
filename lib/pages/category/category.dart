import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/service/category_service.dart';
import 'package:learn_flutter/bean/category/subcategory.dart'
    as SubcategoryBean;
import 'package:learn_flutter/bean/category/category_entity.dart'
    as CategoryBean;

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<Category> {
  CategoryBean.CategoryEntity category;
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
          color: Color(0xFFf8f8f8),
          child: ListView.builder(
            itemCount: this.category?.data?.category?.length == null
                ? 0
                : this.category.data.category.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(
                  height: 40,
                  child: Text(this.category.data.category[index].name),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
