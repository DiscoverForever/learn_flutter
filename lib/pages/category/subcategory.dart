import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/bean/category/category_banner_response_entity.dart';
import 'package:learn_flutter/bean/category/subcategory_response_entity.dart';
import 'package:learn_flutter/pages/home/swipper_image.dart';
import 'package:learn_flutter/service/category_service.dart';

class Subcategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SubcategoryState();
}

class SubcategoryState extends State<Subcategory> {
  List<CategoryBannerResponseCmspromotionslist> bannerList = [];
  SubcategoryResponseEntity subcategoryResponse;
  @override
  void initState() {
    super.initState();
    initSubcategoryBanner();
    initSubcategory();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 80,
      height: MediaQuery.of(context).size.height - 150,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SwipperImage(
              width: double.infinity,
              height: 100,
              swipperOptionsList: bannerList.map((banner) {
                return SwipperOptions(
                  imageUrl: banner.imageUrl,
                  jumpUrl: banner.imageUrl,
                );
              }).toList(),
            ),
            ...subcategoryList(),
          ],
        ),
      ),
    );
  }

  // 初始化子分类
  initSubcategory() async {
    var res = await CategoryService().getSubcategory("11");
    setState(() {
      // TODO
      subcategoryResponse = res;
    });
  }

  // 初始化子分类轮播
  initSubcategoryBanner() async {
    var res = await CategoryService().getSwipperImageList();
    setState(() {
      bannerList = res.cmsPromotionsList;
    });
  }

  List<Widget> subcategoryList() {
    if (subcategoryResponse == null) {
      return <Widget>[Center(
        child: CircularProgressIndicator(),
      )];
    }
    return subcategoryResponse?.data?.map((item) {
      return Container(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: Text(
                item?.name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: item.rankingFlag ? 1 / 1.3 : 1,
              children: item?.catelogyList?.map((subcategory) {
                return Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        subcategory.icon,
                        height: 70,
                      ),
                      Offstage(
                        offstage: !item.rankingFlag,
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            subcategory.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })?.toList(),
            ),
          ],
        ),
      );
    })?.toList();
  }
}
