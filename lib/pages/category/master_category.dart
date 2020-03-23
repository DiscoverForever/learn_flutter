import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/bean/category/category_response_entity.dart';
import 'package:learn_flutter/service/category_service.dart';

class MasterCategory extends StatefulWidget {
  final Null Function(int) onChildClick;

  MasterCategory({ Key key, @required this.onChildClick }): super(key: key);

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
            width: 120,
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: GestureDetector(
                    child: Container(
                      height: 40,
                      color: this.activeIndex == index
                          ? Colors.white
                          : Color(0xFFf8f8f8),
                      child: Center(
                        child: Text(this.categoryList[index].name),
                      ),
                    ),
                    onTap: () {
                      this.setState(() {
                        this.activeIndex = index;
                        widget.onChildClick(this.categoryList[index].cid);
                      });
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
