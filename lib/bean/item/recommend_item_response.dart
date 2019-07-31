import 'package:json_annotation/json_annotation.dart';

part 'recommend_item_response.g.dart';

@JsonSerializable()
class RecommendItemResponse extends Object {
  @JsonKey(name: 'waterFlow')
  String waterFlow;

  @JsonKey(name: 'videoWareWifiPlay')
  String videoWareWifiPlay;

  @JsonKey(name: 'tabId')
  int tabId;

  @JsonKey(name: 'feedBackImmediateEffect')
  String feedBackImmediateEffect;

  @JsonKey(name: 'isOpenMemoryOpt')
  bool isOpenMemoryOpt;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'waterFallStrategy')
  int waterFallStrategy;

  @JsonKey(name: 'wareInfoList')
  List<WareInfo> wareInfoList;

  @JsonKey(name: 'playCompleteState')
  String playCompleteState;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'newTabUI')
  bool newTabUI;

  @JsonKey(name: 'expid')
  String expid;

  RecommendItemResponse(
    this.waterFlow,
    this.videoWareWifiPlay,
    this.tabId,
    this.feedBackImmediateEffect,
    this.isOpenMemoryOpt,
    this.code,
    this.waterFallStrategy,
    this.wareInfoList,
    this.playCompleteState,
    this.title,
    this.newTabUI,
    this.expid,
  );

  factory RecommendItemResponse.fromJson(Map<String, dynamic> srcJson) =>
      _$RecommendItemResponseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RecommendItemResponseToJson(this);
}

@JsonSerializable()
class WareInfo extends Object {
  @JsonKey(name: 'itemType')
  int itemType;

  @JsonKey(name: 'rt')
  int rt;

  @JsonKey(name: 'wareId')
  String wareId;

  @JsonKey(name: 'wname')
  String wname;
  @JsonKey(name: 'wareType')
  int wareType;
  @JsonKey(name: 'markType')
  int markType;

  @JsonKey(name: 'isMonetized')
  bool isMonetized;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'descriptionMore')
  String descriptionMore;

  @JsonKey(name: 'imageurl')
  String imageurl;

  @JsonKey(name: 'imageurlType')
  int imageurlType;

  @JsonKey(name: 'good')
  String good;

  @JsonKey(name: 'commentCount')
  String commentCount;

  @JsonKey(name: 'jdPrice')
  String jdPrice;

  @JsonKey(name: 'isSamWare')
  bool isSamWare;

  @JsonKey(name: 'isPlusWare')
  bool isPlusWare;

  @JsonKey(name: 'isPinGouWare')
  bool isPinGouWare;

  @JsonKey(name: 'tryPlusPrice')
  String tryPlusPrice;

  @JsonKey(name: 'priceColor')
  String priceColor;

  @JsonKey(name: 'priceIcon')
  String priceIcon;

  @JsonKey(name: 'book')
  String book;

  @JsonKey(name: 'promotion')
  String promotion;

  @JsonKey(name: 'mp')
  int mp;

  @JsonKey(name: 'feminine')
  bool feminine;

  @JsonKey(name: 'extension_id')
  String extensionId;

  @JsonKey(name: 'samePicPid')
  String samePicPid;

  @JsonKey(name: 'opPrice')
  String opPrice;

  @JsonKey(name: 'isOpenApp')
  String isOpenApp;

  @JsonKey(name: 'interactive')
  String interactive;

  @JsonKey(name: 'seedPage')
  String seedPage;

  @JsonKey(name: 'seedIndex')
  String seedIndex;

  @JsonKey(name: 'nonWareIcon')
  String nonWareIcon;

  @JsonKey(name: 'fontColor')
  String fontColor;

  @JsonKey(name: 'client_exposal_url')
  String clientExposalUrl;

  @JsonKey(name: 'client_click_url')
  String clientClickUrl;

  @JsonKey(name: 'canClipTitleImg')
  bool canClipTitleImg;

  @JsonKey(name: 'duration')
  int duration;

  @JsonKey(name: 'recomReasonStyle')
  String recomReasonStyle;

  @JsonKey(name: 'flow')
  String flow;

  @JsonKey(name: 'adword')
  String adword;

  @JsonKey(name: 'startRemainTime')
  int startRemainTime;

  @JsonKey(name: 'endRemainTime')
  int endRemainTime;

  @JsonKey(name: 'sid')
  String sid;

  @JsonKey(name: 'isFeedBackSlide')
  int isFeedBackSlide;

  @JsonKey(name: 'followCount')
  String followCount;

  @JsonKey(name: 'category1')
  String category1;

  @JsonKey(name: 'category2')
  String category2;

  @JsonKey(name: 'category3')
  String category3;

  @JsonKey(name: 'stockStateId')
  int stockStateId;

  @JsonKey(name: 'remainNum')
  int remainNum;

  @JsonKey(name: 'wareHouseNum')
  String wareHouseNum;

  @JsonKey(name: 'clickUrl')
  String clickUrl;

  @JsonKey(name: 'similarEnter')
  String similarEnter;

  @JsonKey(name: 'canAddCart')
  String canAddCart;
  @JsonKey(name: 'subWareList')
  List<Subware> subWareList;

  @JsonKey(name: 'channelJumpUrl')
  String channelJumpUrl;

  @JsonKey(name: 'couponSortType')
  int couponSortType;

  @JsonKey(name: 'canNegFeedback')
  String canNegFeedback;

  @JsonKey(name: 'reqsig')
  String reqsig;

  @JsonKey(name: 'abt')
  String abt;

  @JsonKey(name: 'markImageUrl')
  String markImageUrl;

  @JsonKey(name: 'markHeight')
  int markHeight;

  @JsonKey(name: 'markWidth')
  int markWidth;

  @JsonKey(name: 'isDotScheme')
  bool isDotScheme;

  @JsonKey(name: 'presaleWare')
  int presaleWare;

  @JsonKey(name: 'icon2')
  String icon2;

  @JsonKey(name: 'icon3')
  String icon3;

  @JsonKey(name: 'icon3Price')
  String icon3Price;

  @JsonKey(name: 'venderId')
  String venderId;

  @JsonKey(name: 'sourceValue')
  String sourceValue;

  @JsonKey(name: 'sourceValueFeedback')
  String sourceValueFeedback;

  @JsonKey(name: 'sourceValueSimilar')
  String sourceValueSimilar;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'exposureSourceValue')
  String exposureSourceValue;

  @JsonKey(name: 'expid')
  String expid;

  @JsonKey(name: 'feedBackReason')
  List<FeedBackReason> feedBackReason;

  @JsonKey(name: 'isCoupon')
  String isCoupon;

  @JsonKey(name: 'mergePicUrl')
  String mergePicUrl;

  @JsonKey(name: 'crownPicUrl')
  String crownPicUrl;

  @JsonKey(name: 'themeBgcolorStart')
  String themeBgcolorStart;

  @JsonKey(name: 'themeBgcolorEnd')
  String themeBgcolorEnd;

  @JsonKey(name: 'picNum')
  String picNum;

  @JsonKey(name: 'spu')
  String spu;

  @JsonKey(name: 'nonWareType')
  String nonWareType;

  @JsonKey(name: 'jdShop')
  bool jdShop;

  WareInfo(
    this.itemType,
    this.rt,
    this.wareId,
    this.wname,
    this.wareType,
    this.markType,
    this.isMonetized,
    this.description,
    this.descriptionMore,
    this.imageurl,
    this.imageurlType,
    this.good,
    this.commentCount,
    this.jdPrice,
    this.isSamWare,
    this.isPlusWare,
    this.isPinGouWare,
    this.tryPlusPrice,
    this.priceColor,
    this.priceIcon,
    this.book,
    this.promotion,
    this.mp,
    this.feminine,
    this.extensionId,
    this.samePicPid,
    this.opPrice,
    this.isOpenApp,
    this.interactive,
    this.seedPage,
    this.seedIndex,
    this.nonWareIcon,
    this.fontColor,
    this.clientExposalUrl,
    this.clientClickUrl,
    this.canClipTitleImg,
    this.duration,
    this.recomReasonStyle,
    this.flow,
    this.adword,
    this.startRemainTime,
    this.endRemainTime,
    this.sid,
    this.isFeedBackSlide,
    this.followCount,
    this.category1,
    this.category2,
    this.category3,
    this.stockStateId,
    this.remainNum,
    this.wareHouseNum,
    this.clickUrl,
    this.similarEnter,
    this.canAddCart,
    this.subWareList,
    this.channelJumpUrl,
    this.couponSortType,
    this.canNegFeedback,
    this.reqsig,
    this.abt,
    this.markImageUrl,
    this.markHeight,
    this.markWidth,
    this.isDotScheme,
    this.presaleWare,
    this.icon2,
    this.icon3,
    this.icon3Price,
    this.venderId,
    this.sourceValue,
    this.sourceValueFeedback,
    this.sourceValueSimilar,
    
    this.source,
    this.exposureSourceValue,
    this.expid,
    this.feedBackReason,
    this.isCoupon,
    this.mergePicUrl,
    this.crownPicUrl,
    this.themeBgcolorStart,
    this.themeBgcolorEnd,
    this.picNum,
    this.spu,
    this.nonWareType,
    this.jdShop,
  );

  factory WareInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$WareInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$WareInfoToJson(this);
}

@JsonSerializable()
class FeedBackReason extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  FeedBackReason(
    this.id,
    this.name,
  );

  factory FeedBackReason.fromJson(Map<String, dynamic> srcJson) =>
      _$FeedBackReasonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeedBackReasonToJson(this);
}

@JsonSerializable()
class Subware extends Object {
  @JsonKey(name: 'wareId')
  String wareId;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'pid')
  String pid;

  Subware(
    this.wareId,
    this.imageUrl,
    this.pid,
  );

  factory Subware.fromJson(Map<String, dynamic> srcJson) =>
      _$SubwareFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SubwareToJson(this);
}
