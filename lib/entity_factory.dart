import 'package:learn_flutter/bean/home/home_model_entity.dart';
import 'package:learn_flutter/bean/category/category_entity.dart';
import 'package:learn_flutter/bean/item_info/item_info_response_entity.dart';
import 'package:learn_flutter/bean/user/user_info_response_entity.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeModelEntity") {
      return HomeModelEntity.fromJson(json) as T;
    } else if (T.toString() == "CategoryEntity") {
      return CategoryEntity.fromJson(json) as T;
    } else if (T.toString() == "ItemInfoResponseEntity") {
      return ItemInfoResponseEntity.fromJson(json) as T;
    } else if (T.toString() == "UserInfoResponseEntity") {
      return UserInfoResponseEntity.fromJson(json) as T;
    } else if (T.toString() == "FloorModelEntity") {
      return FloorModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}