// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendItemResponse _$RecommendItemResponseFromJson(
    Map<String, dynamic> json) {
  return RecommendItemResponse(
      json['waterFlow'] as String,
      json['videoWareWifiPlay'] as String,
      json['tabId'] as int,
      json['feedBackImmediateEffect'] as String,
      json['isOpenMemoryOpt'] as bool,
      json['code'] as String,
      json['waterFallStrategy'] as int,
      (json['wareInfoList'] as List)
          ?.map((e) =>
              e == null ? null : WareInfo.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['playCompleteState'] as String,
      json['title'] as String,
      json['newTabUI'] as bool,
      json['expid'] as String);
}

Map<String, dynamic> _$RecommendItemResponseToJson(
        RecommendItemResponse instance) =>
    <String, dynamic>{
      'waterFlow': instance.waterFlow,
      'videoWareWifiPlay': instance.videoWareWifiPlay,
      'tabId': instance.tabId,
      'feedBackImmediateEffect': instance.feedBackImmediateEffect,
      'isOpenMemoryOpt': instance.isOpenMemoryOpt,
      'code': instance.code,
      'waterFallStrategy': instance.waterFallStrategy,
      'wareInfoList': instance.wareInfoList,
      'playCompleteState': instance.playCompleteState,
      'title': instance.title,
      'newTabUI': instance.newTabUI,
      'expid': instance.expid
    };

WareInfo _$WareInfoFromJson(Map<String, dynamic> json) {
  return WareInfo(
      json['itemType'] as int,
      json['rt'] as int,
      json['wareId'] as String,
      json['wname'] as String,
      json['wareType'] as int,
      json['markType'] as int,
      json['isMonetized'] as bool,
      json['description'] as String,
      json['descriptionMore'] as String,
      json['imageurl'] as String,
      json['imageurlType'] as int,
      json['good'] as String,
      json['commentCount'] as String,
      json['jdPrice'] as String,
      json['isSamWare'] as bool,
      json['isPlusWare'] as bool,
      json['isPinGouWare'] as bool,
      json['tryPlusPrice'] as String,
      json['priceColor'] as String,
      json['priceIcon'] as String,
      json['book'] as String,
      json['promotion'] as String,
      json['mp'] as int,
      json['feminine'] as bool,
      json['extension_id'] as String,
      json['samePicPid'] as String,
      json['opPrice'] as String,
      json['isOpenApp'] as String,
      json['interactive'] as String,
      json['seedPage'] as String,
      json['seedIndex'] as String,
      json['nonWareIcon'] as String,
      json['fontColor'] as String,
      json['client_exposal_url'] as String,
      json['client_click_url'] as String,
      json['canClipTitleImg'] as bool,
      json['duration'] as int,
      json['recomReasonStyle'] as String,
      json['flow'] as String,
      json['adword'] as String,
      json['startRemainTime'] as int,
      json['endRemainTime'] as int,
      json['sid'] as String,
      json['isFeedBackSlide'] as int,
      json['followCount'] as String,
      json['category1'] as String,
      json['category2'] as String,
      json['category3'] as String,
      json['stockStateId'] as int,
      json['remainNum'] as int,
      json['wareHouseNum'] as String,
      json['clickUrl'] as String,
      json['similarEnter'] as String,
      json['canAddCart'] as String,
      (json['subWareList'] as List)
          ?.map((e) =>
              e == null ? null : Subware.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['channelJumpUrl'] as String,
      json['couponSortType'] as int,
      json['canNegFeedback'] as String,
      json['reqsig'] as String,
      json['abt'] as String,
      json['markImageUrl'] as String,
      json['markHeight'] as int,
      json['markWidth'] as int,
      json['isDotScheme'] as bool,
      json['presaleWare'] as int,
      json['icon2'] as String,
      json['icon3'] as String,
      json['icon3Price'] as String,
      json['venderId'] as String,
      json['sourceValue'] as String,
      json['sourceValueFeedback'] as String,
      json['sourceValueSimilar'] as String,
      json['source'] as String,
      json['exposureSourceValue'] as String,
      json['expid'] as String,
      (json['feedBackReason'] as List)
          ?.map((e) => e == null
              ? null
              : FeedBackReason.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['isCoupon'] as String,
      json['mergePicUrl'] as String,
      json['crownPicUrl'] as String,
      json['themeBgcolorStart'] as String,
      json['themeBgcolorEnd'] as String,
      json['picNum'] as String,
      json['spu'] as String,
      json['nonWareType'] as String,
      json['jdShop'] as bool);
}

Map<String, dynamic> _$WareInfoToJson(WareInfo instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'rt': instance.rt,
      'wareId': instance.wareId,
      'wname': instance.wname,
      'wareType': instance.wareType,
      'markType': instance.markType,
      'isMonetized': instance.isMonetized,
      'description': instance.description,
      'descriptionMore': instance.descriptionMore,
      'imageurl': instance.imageurl,
      'imageurlType': instance.imageurlType,
      'good': instance.good,
      'commentCount': instance.commentCount,
      'jdPrice': instance.jdPrice,
      'isSamWare': instance.isSamWare,
      'isPlusWare': instance.isPlusWare,
      'isPinGouWare': instance.isPinGouWare,
      'tryPlusPrice': instance.tryPlusPrice,
      'priceColor': instance.priceColor,
      'priceIcon': instance.priceIcon,
      'book': instance.book,
      'promotion': instance.promotion,
      'mp': instance.mp,
      'feminine': instance.feminine,
      'extension_id': instance.extensionId,
      'samePicPid': instance.samePicPid,
      'opPrice': instance.opPrice,
      'isOpenApp': instance.isOpenApp,
      'interactive': instance.interactive,
      'seedPage': instance.seedPage,
      'seedIndex': instance.seedIndex,
      'nonWareIcon': instance.nonWareIcon,
      'fontColor': instance.fontColor,
      'client_exposal_url': instance.clientExposalUrl,
      'client_click_url': instance.clientClickUrl,
      'canClipTitleImg': instance.canClipTitleImg,
      'duration': instance.duration,
      'recomReasonStyle': instance.recomReasonStyle,
      'flow': instance.flow,
      'adword': instance.adword,
      'startRemainTime': instance.startRemainTime,
      'endRemainTime': instance.endRemainTime,
      'sid': instance.sid,
      'isFeedBackSlide': instance.isFeedBackSlide,
      'followCount': instance.followCount,
      'category1': instance.category1,
      'category2': instance.category2,
      'category3': instance.category3,
      'stockStateId': instance.stockStateId,
      'remainNum': instance.remainNum,
      'wareHouseNum': instance.wareHouseNum,
      'clickUrl': instance.clickUrl,
      'similarEnter': instance.similarEnter,
      'canAddCart': instance.canAddCart,
      'subWareList': instance.subWareList,
      'channelJumpUrl': instance.channelJumpUrl,
      'couponSortType': instance.couponSortType,
      'canNegFeedback': instance.canNegFeedback,
      'reqsig': instance.reqsig,
      'abt': instance.abt,
      'markImageUrl': instance.markImageUrl,
      'markHeight': instance.markHeight,
      'markWidth': instance.markWidth,
      'isDotScheme': instance.isDotScheme,
      'presaleWare': instance.presaleWare,
      'icon2': instance.icon2,
      'icon3': instance.icon3,
      'icon3Price': instance.icon3Price,
      'venderId': instance.venderId,
      'sourceValue': instance.sourceValue,
      'sourceValueFeedback': instance.sourceValueFeedback,
      'sourceValueSimilar': instance.sourceValueSimilar,
      'source': instance.source,
      'exposureSourceValue': instance.exposureSourceValue,
      'expid': instance.expid,
      'feedBackReason': instance.feedBackReason,
      'isCoupon': instance.isCoupon,
      'mergePicUrl': instance.mergePicUrl,
      'crownPicUrl': instance.crownPicUrl,
      'themeBgcolorStart': instance.themeBgcolorStart,
      'themeBgcolorEnd': instance.themeBgcolorEnd,
      'picNum': instance.picNum,
      'spu': instance.spu,
      'nonWareType': instance.nonWareType,
      'jdShop': instance.jdShop
    };

FeedBackReason _$FeedBackReasonFromJson(Map<String, dynamic> json) {
  return FeedBackReason(json['id'] as int, json['name'] as String);
}

Map<String, dynamic> _$FeedBackReasonToJson(FeedBackReason instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

Subware _$SubwareFromJson(Map<String, dynamic> json) {
  return Subware(json['wareId'] as String, json['imageUrl'] as String,
      json['pid'] as String);
}

Map<String, dynamic> _$SubwareToJson(Subware instance) => <String, dynamic>{
      'wareId': instance.wareId,
      'imageUrl': instance.imageUrl,
      'pid': instance.pid
    };
