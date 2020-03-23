import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/pages/category/master_category.dart';
import 'package:learn_flutter/pages/category/subcategory.dart';
import 'package:learn_flutter/pages/category/subcategory_item.dart';
import 'package:learn_flutter/service/category_service.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<Category> {
  @override
  void initState() {
    super.initState();
  }
  getSubcategoryList(String categoryId) async {
    var res = await CategoryService().getSubcategory(categoryId);
    print(res);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.crop_free,
            color: Color(0xFF787878),
          ),
          onPressed: () {},
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color(0xFFf8f8f8)),
          child: TextField(
            decoration: InputDecoration(
              hintText: '遇见更好的自己',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              suffixIcon: Icon(Icons.camera_alt),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF444444),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Color(0xFF595959),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          MasterCategory(
            onChildClick: (int id) {
              getSubcategoryList(id.toString());
            },
          ),
          SubcategoryItem(),
        ],
      ),
    );
  }
}
