// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomeHome _$WelcomeHomeFromJson(Map<String, dynamic> json) {
  return WelcomeHome(
      json['naviVer'] as String,
      json['toTopBtnImg'] as String,
      json['configDisplayVersion'] as String,
      json['userCategory'] as String,
      json['executeTime'] as int,
      json['topBgImgBig'] as String,
      json['personalSourceValue'] as String,
      json['popMessage'] as int,
      json['searchBgColor'] as String,
      json['displayVersion'] as String,
      json['tagAnimations'] as int,
      json['showLightIcon'] as int,
      json['canBeDefault'] as bool,
      json['loginText'] as String,
      (json['floorList'] as List)
          ?.map((e) =>
              e == null ? null : FloorList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['toBottomBtnImg'] as String,
      json['cycNum'] as int,
      json['use_new_brands'] as int,
      json['alignedCurrentTime'] as int,
      json['cycFirstTimeStamp'] as String,
      json['searchBgImg'] as String,
      json['code'] as String,
      json['appCenterAnimations'] as int,
      json['skinSwitch'] as int,
      json['lottieCartoonList'] as List,
      json['topIconText'] as int,
      json['useComponentImg'] as int,
      json['topBgImgBigColor'] as String,
      json['appCenterCartoonSwitch'] as int,
      json['topBgImg'] as String,
      json['recommendAB'] as String,
      json['lazy'] as int,
      (json['webViewFloorList'] as List)
          ?.map((e) => e == null
              ? null
              : WebViewFloorList.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$WelcomeHomeToJson(WelcomeHome instance) =>
    <String, dynamic>{
      'naviVer': instance.naviVer,
      'toTopBtnImg': instance.toTopBtnImg,
      'configDisplayVersion': instance.configDisplayVersion,
      'userCategory': instance.userCategory,
      'executeTime': instance.executeTime,
      'topBgImgBig': instance.topBgImgBig,
      'personalSourceValue': instance.personalSourceValue,
      'popMessage': instance.popMessage,
      'searchBgColor': instance.searchBgColor,
      'displayVersion': instance.displayVersion,
      'tagAnimations': instance.tagAnimations,
      'showLightIcon': instance.showLightIcon,
      'canBeDefault': instance.canBeDefault,
      'loginText': instance.loginText,
      'floorList': instance.floorList,
      'toBottomBtnImg': instance.toBottomBtnImg,
      'cycNum': instance.cycNum,
      'use_new_brands': instance.useNewBrands,
      'alignedCurrentTime': instance.alignedCurrentTime,
      'cycFirstTimeStamp': instance.cycFirstTimeStamp,
      'searchBgImg': instance.searchBgImg,
      'code': instance.code,
      'appCenterAnimations': instance.appCenterAnimations,
      'skinSwitch': instance.skinSwitch,
      'lottieCartoonList': instance.lottieCartoonList,
      'topIconText': instance.topIconText,
      'useComponentImg': instance.useComponentImg,
      'topBgImgBigColor': instance.topBgImgBigColor,
      'appCenterCartoonSwitch': instance.appCenterCartoonSwitch,
      'topBgImg': instance.topBgImg,
      'recommendAB': instance.recommendAB,
      'lazy': instance.lazy,
      'webViewFloorList': instance.webViewFloorList
    };

FloorList _$FloorListFromJson(Map<String, dynamic> json) {
  return FloorList(
      json['curve'] as int,
      json['content'],
      json['bottomMargin'] as int,
      json['isNewStyle'] as int,
      json['showName'] as String,
      json['isShadow'] as int,
      json['type'] as String,
      json['slipTime'] as int);
}

Map<String, dynamic> _$FloorListToJson(FloorList instance) => <String, dynamic>{
      'curve': instance.curve,
      'content': instance.content,
      'bottomMargin': instance.bottomMargin,
      'isNewStyle': instance.isNewStyle,
      'showName': instance.showName,
      'isShadow': instance.isShadow,
      'type': instance.type,
      'slipTime': instance.slipTime
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
      json['extension_id'] as String,
      json['activityId'] as int,
      json['sortno'] as int,
      json['abt'] as String,
      json['title'] as String,
      json['wareDisplayType'] as int,
      json['horizontalImag'] as String,
      json['sourceTag'] as String,
      json['exposalUrl'] as String,
      json['clickUrl'] as String,
      json['jump'] == null
          ? null
          : Jump.fromJson(json['jump'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'extension_id': instance.extensionId,
      'activityId': instance.activityId,
      'sortno': instance.sortno,
      'abt': instance.abt,
      'title': instance.title,
      'wareDisplayType': instance.wareDisplayType,
      'horizontalImag': instance.horizontalImag,
      'sourceTag': instance.sourceTag,
      'exposalUrl': instance.exposalUrl,
      'clickUrl': instance.clickUrl,
      'jump': instance.jump
    };

WebViewFloorList _$WebViewFloorListFromJson(Map<String, dynamic> json) {
  return WebViewFloorList(
      json['curve'] as int,
      json['showTimes'] as int,
      json['logoImage'] as String,
      json['cornerDegree'] as String,
      json['passthrough'] as int,
      json['marginHorizontal'] as int,
      json['type'] as String,
      json['rightCorner'] as String,
      json['floorId'] as int,
      json['showName'] as String,
      json['moduleFunction'] as int,
      json['floorOrder'] as int,
      json['head'] as int,
      json['resultHeight'] as int,
      json['rightCornerImg'] as String,
      json['bottomMargin'] as int,
      json['sourceValue'] as String,
      json['textColor'] as String,
      json['marginTop'] as int,
      json['bottomMarginWidth'] as int,
      json['headType'] as int,
      json['bottomMarginColor'] as String,
      json['jump'] == null
          ? null
          : Jump.fromJson(json['jump'] as Map<String, dynamic>),
      json['marginColor'] as String,
      json['rightCornerColor'] as String,
      json['innnerInterval'] as int,
      (json['webViewList'] as List)
          ?.map((e) => e == null
              ? null
              : WebViewList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['refreshHeight'] as int,
      json['verticalInterval'] as int,
      json['animationTime'] as int,
      json['tips'] as String,
      json['bottomColor'] as String);
}

Map<String, dynamic> _$WebViewFloorListToJson(WebViewFloorList instance) =>
    <String, dynamic>{
      'curve': instance.curve,
      'showTimes': instance.showTimes,
      'logoImage': instance.logoImage,
      'cornerDegree': instance.cornerDegree,
      'passthrough': instance.passthrough,
      'marginHorizontal': instance.marginHorizontal,
      'type': instance.type,
      'rightCorner': instance.rightCorner,
      'floorId': instance.floorId,
      'showName': instance.showName,
      'moduleFunction': instance.moduleFunction,
      'floorOrder': instance.floorOrder,
      'head': instance.head,
      'resultHeight': instance.resultHeight,
      'rightCornerImg': instance.rightCornerImg,
      'bottomMargin': instance.bottomMargin,
      'sourceValue': instance.sourceValue,
      'textColor': instance.textColor,
      'marginTop': instance.marginTop,
      'bottomMarginWidth': instance.bottomMarginWidth,
      'headType': instance.headType,
      'bottomMarginColor': instance.bottomMarginColor,
      'jump': instance.jump,
      'marginColor': instance.marginColor,
      'rightCornerColor': instance.rightCornerColor,
      'innnerInterval': instance.innnerInterval,
      'webViewList': instance.webViewList,
      'refreshHeight': instance.refreshHeight,
      'verticalInterval': instance.verticalInterval,
      'animationTime': instance.animationTime,
      'tips': instance.tips,
      'bottomColor': instance.bottomColor
    };

WebViewList _$WebViewListFromJson(Map<String, dynamic> json) {
  return WebViewList(
      json['img'] as String,
      json['expo'] as String,
      json['wordsColor'] as String,
      json['jump'] == null
          ? null
          : Jump.fromJson(json['jump'] as Map<String, dynamic>));
}

Map<String, dynamic> _$WebViewListToJson(WebViewList instance) =>
    <String, dynamic>{
      'img': instance.img,
      'expo': instance.expo,
      'wordsColor': instance.wordsColor,
      'jump': instance.jump
    };

Jump _$JumpFromJson(Map<String, dynamic> json) {
  return Jump(
      json['des'] as String,
      json['shareInfo'] == null
          ? null
          : ShareInfo.fromJson(json['shareInfo'] as Map<String, dynamic>),
      json['params'] == null
          ? null
          : Params.fromJson(json['params'] as Map<String, dynamic>),
      json['srv']);
}

Map<String, dynamic> _$JumpToJson(Jump instance) => <String, dynamic>{
      'des': instance.des,
      'shareInfo': instance.shareInfo,
      'params': instance.params,
      'srv': instance.srv
    };

ShareInfo _$ShareInfoFromJson(Map<String, dynamic> json) {
  return ShareInfo();
}

Map<String, dynamic> _$ShareInfoToJson(ShareInfo instance) =>
    <String, dynamic>{};

Params _$ParamsFromJson(Map<String, dynamic> json) {
  return Params(json['needLogin'] as String, json['url'] as String);
}

Map<String, dynamic> _$ParamsToJson(Params instance) =>
    <String, dynamic>{'needLogin': instance.needLogin, 'url': instance.url};
