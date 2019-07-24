import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/pages/category/subcategory.dart';
import 'package:learn_flutter/pages/category/master_category.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        MasterCategory(),
        Subcategory(),
      ]),
    );
  }
}
