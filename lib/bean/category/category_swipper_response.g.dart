// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_swipper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySwipperResonse _$CategorySwipperResonseFromJson(
    Map<String, dynamic> json) {
  return CategorySwipperResonse(
      json['code'] as String,
      json['styleTypeBanner'] as String,
      json['clientCacheTime2'] as String,
      json['clientCacheTime3'] as String,
      json['clientCacheTime1'] as String,
      json['clientCacheTimeFreq'] as String,
      json['testId3'] as String,
      json['bannerFrames'] as int,
      json['testId4'] as String,
      json['testId1'] as String,
      json['testId2'] as String,
      (json['cmsPromotionsList'] as List)
          ?.map((e) => e == null
              ? null
              : CmsPromotionsList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['bannerSource'] as String,
      json['modified'] as int,
      json['commonCategoryTimestamp'] as int,
      json['cmsMonthCardList'] as List);
}

Map<String, dynamic> _$CategorySwipperResonseToJson(
        CategorySwipperResonse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'styleTypeBanner': instance.styleTypeBanner,
      'clientCacheTime2': instance.clientCacheTime2,
      'clientCacheTime3': instance.clientCacheTime3,
      'clientCacheTime1': instance.clientCacheTime1,
      'clientCacheTimeFreq': instance.clientCacheTimeFreq,
      'testId3': instance.testId3,
      'bannerFrames': instance.bannerFrames,
      'testId4': instance.testId4,
      'testId1': instance.testId1,
      'testId2': instance.testId2,
      'cmsPromotionsList': instance.cmsPromotionsList,
      'bannerSource': instance.bannerSource,
      'modified': instance.modified,
      'commonCategoryTimestamp': instance.commonCategoryTimestamp,
      'cmsMonthCardList': instance.cmsMonthCardList
    };

CmsPromotionsList _$CmsPromotionsListFromJson(Map<String, dynamic> json) {
  return CmsPromotionsList(
      json['promotion_id'] as int,
      json['catelogyId'] as int,
      json['imageUrl'] as String,
      json['imageUrl_wap'] as String,
      json['mPageAddress'] as String,
      json['target'] as String,
      json['promotionLogUrl'] as String,
      json['destination'] as String,
      json['jumpFlag'] as String);
}

Map<String, dynamic> _$CmsPromotionsListToJson(CmsPromotionsList instance) =>
    <String, dynamic>{
      'promotion_id': instance.promotionId,
      'catelogyId': instance.catelogyId,
      'imageUrl': instance.imageUrl,
      'imageUrl_wap': instance.imageUrlWap,
      'mPageAddress': instance.mPageAddress,
      'target': instance.target,
      'promotionLogUrl': instance.promotionLogUrl,
      'destination': instance.destination,
      'jumpFlag': instance.jumpFlag
    };
