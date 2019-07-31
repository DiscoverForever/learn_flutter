import 'package:flutter/widgets.dart';
import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/category/category_swipper_response.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/pages/home/swipper_image.dart';
import 'package:learn_flutter/utils/request_util.dart';
import 'package:learn_flutter/bean/category/subcategory.dart' as SubcategoryLib;
class Subcategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SubcategoryState();
}

class SubcategoryState extends State<Subcategory> {
  // List<cmsPromotionsList> swipperImage
  @override
  void initState() {
    super.initState();
    this.getSubcategoryList();
    this.getSwipperImageList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          // SwipperImage(),
      ],
    );
  }

  /// 获取子分类列表
  getSubcategoryList() async {
    var res = await RequestUtil.getInstance().post(Api.subcateoryList);
    return EntityFactory.generateOBJ<SubcategoryLib.Subcategory>(res.data).data;
  }

  /// 获取子分类轮播图
  getSwipperImageList() async {
    var res = await RequestUtil.getInstance().post(Api.swipperImageList);
    return EntityFactory.generateOBJ<CategorySwipperResonse>(res.data).cmsPromotionsList;
  }
}
