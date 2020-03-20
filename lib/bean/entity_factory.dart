import 'package:learn_flutter/bean/category/subcategory.dart';
import 'package:learn_flutter/bean/home/welcome_home.dart';
import 'package:learn_flutter/bean/home/home_model_entity.dart';
import 'package:learn_flutter/bean/category/category_entity.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';
import 'package:learn_flutter/bean/category/category_swipper_response.dart';
import 'package:learn_flutter/bean/item/recommend_item_response.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';

import 'item_info/item_info_response_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (T.toString() == "WelcomeHome") {
      return WelcomeHome.fromJson(json) as T;
    } else if (T.toString() == "HomeModelEntity") {
      return HomeModelEntity.fromJson(json) as T;
    } else if (T.toString() == "CategoryEntity") {
      return CategoryEntity.fromJson(json) as T;
    } else if (T.toString() == "Subcategory") {
      return Subcategory.fromJson(json) as T;
    } else if (T.toString() == "CategorySwipperResonse") {
      return CategorySwipperResonse.fromJson(json) as T;
    } else if (T.toString() == "RecommendItemResponse") {
      return RecommendItemResponse.fromJson(json) as T;
    } else if (T.toString() == "FloorModelEntity") {
      return FloorModelEntity.fromJson(json) as T;
    } else if (T.toString() == "UserInfoResponseEntity") {
      return UserInfoResponseEntity.fromJson(json) as T;
    } else if (T.toString() == "ItemInfoResponseEntity") {
      return ItemInfoResponseEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}