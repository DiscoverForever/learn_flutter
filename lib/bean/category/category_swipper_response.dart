import 'package:json_annotation/json_annotation.dart';

part 'category_swipper_response.g.dart';

@JsonSerializable()
class CategorySwipperResonse extends Object {
  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'styleTypeBanner')
  String styleTypeBanner;

  @JsonKey(name: 'clientCacheTime2')
  String clientCacheTime2;

  @JsonKey(name: 'clientCacheTime3')
  String clientCacheTime3;

  @JsonKey(name: 'clientCacheTime1')
  String clientCacheTime1;

  @JsonKey(name: 'clientCacheTimeFreq')
  String clientCacheTimeFreq;

  @JsonKey(name: 'testId3')
  String testId3;

  @JsonKey(name: 'bannerFrames')
  int bannerFrames;

  @JsonKey(name: 'testId4')
  String testId4;

  @JsonKey(name: 'testId1')
  String testId1;

  @JsonKey(name: 'testId2')
  String testId2;

  @JsonKey(name: 'cmsPromotionsList')
  List<CmsPromotionsList> cmsPromotionsList;

  @JsonKey(name: 'bannerSource')
  String bannerSource;

  @JsonKey(name: 'modified')
  int modified;

  @JsonKey(name: 'commonCategoryTimestamp')
  int commonCategoryTimestamp;

  @JsonKey(name: 'cmsMonthCardList')
  List<dynamic> cmsMonthCardList;

  CategorySwipperResonse(
    this.code,
    this.styleTypeBanner,
    this.clientCacheTime2,
    this.clientCacheTime3,
    this.clientCacheTime1,
    this.clientCacheTimeFreq,
    this.testId3,
    this.bannerFrames,
    this.testId4,
    this.testId1,
    this.testId2,
    this.cmsPromotionsList,
    this.bannerSource,
    this.modified,
    this.commonCategoryTimestamp,
    this.cmsMonthCardList,
  );

  factory CategorySwipperResonse.fromJson(Map<String, dynamic> srcJson) =>
      _$CategorySwipperResonseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategorySwipperResonseToJson(this);
}

@JsonSerializable()
class CmsPromotionsList extends Object {
  @JsonKey(name: 'promotion_id')
  int promotionId;

  @JsonKey(name: 'catelogyId')
  int catelogyId;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'imageUrl_wap')
  String imageUrlWap;

  @JsonKey(name: 'mPageAddress')
  String mPageAddress;

  @JsonKey(name: 'target')
  String target;

  @JsonKey(name: 'promotionLogUrl')
  String promotionLogUrl;

  @JsonKey(name: 'destination')
  String destination;

  @JsonKey(name: 'jumpFlag')
  String jumpFlag;

  CmsPromotionsList(
    this.promotionId,
    this.catelogyId,
    this.imageUrl,
    this.imageUrlWap,
    this.mPageAddress,
    this.target,
    this.promotionLogUrl,
    this.destination,
    this.jumpFlag,
  );

  factory CmsPromotionsList.fromJson(Map<String, dynamic> srcJson) =>
      _$CmsPromotionsListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CmsPromotionsListToJson(this);
}
