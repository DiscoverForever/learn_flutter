import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/category/category_banner_response_entity.dart';
import 'package:learn_flutter/bean/category/category_response_entity.dart';
import 'package:learn_flutter/bean/category/category_entity.dart';
import 'package:learn_flutter/bean/category/subcategory_response_entity.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/utils/request_util.dart';

class CategoryService {
  Future<CategoryEntity> getCategory() async {
    var response = await RequestUtil.getInstance().post(Api.category);
    return EntityFactory.generateOBJ<CategoryEntity>(response.data);
  }

  Future<SubcategoryResponseEntity> getSubcategory(String catelogyId) async {
    var response = await RequestUtil.getInstance().post(
      Api.subcateoryList,
      data: {
        catelogyId: catelogyId
      },
    );
    return EntityFactory.generateOBJ<SubcategoryResponseEntity>(response.data);
  }

  Future<CategoryResponseEntity> getMasterCategory() async {
    var response = await RequestUtil.getInstance().post(
      Api.Category,
      data: {},
    );
    return EntityFactory.generateOBJ<CategoryResponseEntity>(response.data);
  }

  /// 获取子分类轮播图
  Future<CategoryBannerResponseEntity> getSwipperImageList() async {
    var res = await RequestUtil.getInstance().post(Api.swipperImageList);
    return EntityFactory.generateOBJ<CategoryBannerResponseEntity>(res.data);
  }
}
