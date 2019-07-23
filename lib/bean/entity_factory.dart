import 'package:learn_flutter/bean/category/subcategory.dart';
import 'package:learn_flutter/bean/category/category_entity.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "FloorModelEntity") {
      return FloorModelEntity.fromJson(json) as T;
    } else if (T.toString() == "CategoryEntity") {
      return CategoryEntity.fromJson(json) as T;
    } else if (T.toString() == "Subcategory") {
      return Subcategory.fromJson(json) as T;
    } else {
      return null;
    }
  }
}