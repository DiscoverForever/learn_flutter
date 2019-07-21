import 'package:learn_flutter/bean/home/home_model_entity.dart';
import 'package:learn_flutter/bean/floor/floor_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeModelEntity") {
      return HomeModelEntity.fromJson(json) as T;
    } else if (T.toString() == "FloorModelEntity") {
      return FloorModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}