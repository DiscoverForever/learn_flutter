import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/shopcart/shopcart_response_entity.dart';
import 'package:learn_flutter/utils/request_util.dart';

class ShopcartService {
  // 获取购物车列表
  static Future<ShopcartResponseEntity> getShopcartList() async {
    var res = await RequestUtil.getInstance().post(Api.Shopcart);
    return EntityFactory.generateOBJ<ShopcartResponseEntity>(res.data);
  }
}