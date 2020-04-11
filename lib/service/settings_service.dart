import 'package:learn_flutter/api/api.dart';
import 'package:learn_flutter/bean/entity_factory.dart';
import 'package:learn_flutter/bean/settings/settings_response_entity.dart';
import 'package:learn_flutter/utils/request_util.dart';

class SettingsService {
  static Future<SettingsResponseEntity> getSettings () async {
    var response = await RequestUtil.getInstance().post(Api.Settings);
    return SettingsResponseEntity().fromJson(response.data);
    // return EntityFactory.generateOBJ<SettingsResponseEntity>(response.data);
  }
}