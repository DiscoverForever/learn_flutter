import 'package:learn_flutter/bean/category/subcategory.dart';
import 'package:learn_flutter/bean/home/welcome_home.dart';
import 'package:learn_flutter/bean/home/home_model_entity.dart';
import 'package:learn_flutter/bean/category/category_entity.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';
import 'package:learn_flutter/bean/category/category_swipper_response.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "WelcomeHome") {
      return WelcomeHome.fromJson(json) as T;
    } else if (T.toString() == "HomeModelEntity") {
      return HomeModelEntity.fromJson(json) as T;
    } else if (T.toString() == "CategoryEntity") {
      return CategoryEntity.fromJson(json) as T;
    } else if (T.toString() == "Subcategory") {
      return Subcategory.fromJson(json) as T;
    } else if (T.toString() == "CategorySwipperResonse") {
      return CategorySwipperResonse.fromJson(json) as T;
    } else if (T.toString() == "FloorModelEntity") {
      return FloorModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}