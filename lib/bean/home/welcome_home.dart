import 'package:json_annotation/json_annotation.dart'; 
  
part 'welcome_home.g.dart';


@JsonSerializable()
  class WelcomeHome extends Object {

  @JsonKey(name: 'naviVer')
  String naviVer;

  @JsonKey(name: 'toTopBtnImg')
  String toTopBtnImg;

  @JsonKey(name: 'configDisplayVersion')
  String configDisplayVersion;

  @JsonKey(name: 'userCategory')
  String userCategory;

  @JsonKey(name: 'executeTime')
  int executeTime;

  @JsonKey(name: 'topBgImgBig')
  String topBgImgBig;

  @JsonKey(name: 'personalSourceValue')
  String personalSourceValue;

  @JsonKey(name: 'popMessage')
  int popMessage;

  @JsonKey(name: 'searchBgColor')
  String searchBgColor;

  @JsonKey(name: 'displayVersion')
  String displayVersion;

  @JsonKey(name: 'tagAnimations')
  int tagAnimations;

  @JsonKey(name: 'showLightIcon')
  int showLightIcon;

  @JsonKey(name: 'canBeDefault')
  bool canBeDefault;

  @JsonKey(name: 'loginText')
  String loginText;

  @JsonKey(name: 'floorList')
  List<FloorList> floorList;

  @JsonKey(name: 'toBottomBtnImg')
  String toBottomBtnImg;

  @JsonKey(name: 'cycNum')
  int cycNum;

  @JsonKey(name: 'use_new_brands')
  int useNewBrands;

  @JsonKey(name: 'alignedCurrentTime')
  int alignedCurrentTime;

  @JsonKey(name: 'cycFirstTimeStamp')
  String cycFirstTimeStamp;

  @JsonKey(name: 'searchBgImg')
  String searchBgImg;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'appCenterAnimations')
  int appCenterAnimations;

  @JsonKey(name: 'skinSwitch')
  int skinSwitch;

  @JsonKey(name: 'lottieCartoonList')
  List<dynamic> lottieCartoonList;

  @JsonKey(name: 'topIconText')
  int topIconText;

  @JsonKey(name: 'useComponentImg')
  int useComponentImg;

  @JsonKey(name: 'topBgImgBigColor')
  String topBgImgBigColor;

  @JsonKey(name: 'appCenterCartoonSwitch')
  int appCenterCartoonSwitch;

  @JsonKey(name: 'topBgImg')
  String topBgImg;

  @JsonKey(name: 'recommendAB')
  String recommendAB;

  @JsonKey(name: 'lazy')
  int lazy;

  @JsonKey(name: 'webViewFloorList')
  List<WebViewFloorList> webViewFloorList;

  WelcomeHome(this.naviVer,this.toTopBtnImg,this.configDisplayVersion,this.userCategory,this.executeTime,this.topBgImgBig,this.personalSourceValue,this.popMessage,this.searchBgColor,this.displayVersion,this.tagAnimations,this.showLightIcon,this.canBeDefault,this.loginText,this.floorList,this.toBottomBtnImg,this.cycNum,this.useNewBrands,this.alignedCurrentTime,this.cycFirstTimeStamp,this.searchBgImg,this.code,this.appCenterAnimations,this.skinSwitch,this.lottieCartoonList,this.topIconText,this.useComponentImg,this.topBgImgBigColor,this.appCenterCartoonSwitch,this.topBgImg,this.recommendAB,this.lazy,this.webViewFloorList,);

  factory WelcomeHome.fromJson(Map<String, dynamic> srcJson) => _$WelcomeHomeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$WelcomeHomeToJson(this);

}

  
@JsonSerializable()
  class FloorList extends Object {

  @JsonKey(name: 'curve')
  int curve;

  @JsonKey(name: 'content')
  dynamic content;

  @JsonKey(name: 'bottomMargin')
  int bottomMargin;

  @JsonKey(name: 'isNewStyle')
  int isNewStyle;

  @JsonKey(name: 'showName')
  String showName;

  @JsonKey(name: 'isShadow')
  int isShadow;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'slipTime')
  int slipTime;

  FloorList(this.curve,this.content,this.bottomMargin,this.isNewStyle,this.showName,this.isShadow,this.type,this.slipTime,);

  factory FloorList.fromJson(Map<String, dynamic> srcJson) => _$FloorListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FloorListToJson(this);

}

  
@JsonSerializable()
  class Content extends Object {

  @JsonKey(name: 'extension_id')
  String extensionId;

  @JsonKey(name: 'activityId')
  int activityId;

  @JsonKey(name: 'sortno')
  int sortno;

  @JsonKey(name: 'abt')
  String abt;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'wareDisplayType')
  int wareDisplayType;

  @JsonKey(name: 'horizontalImag')
  String horizontalImag;

  @JsonKey(name: 'sourceTag')
  String sourceTag;

  @JsonKey(name: 'exposalUrl')
  String exposalUrl;

  @JsonKey(name: 'clickUrl')
  String clickUrl;

  @JsonKey(name: 'jump')
  Jump jump;

  Content(this.extensionId,this.activityId,this.sortno,this.abt,this.title,this.wareDisplayType,this.horizontalImag,this.sourceTag,this.exposalUrl,this.clickUrl,this.jump,);

  factory Content.fromJson(Map<String, dynamic> srcJson) => _$ContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

}

  
@JsonSerializable()
  class WebViewFloorList extends Object {

  @JsonKey(name: 'curve')
  int curve;

  @JsonKey(name: 'showTimes')
  int showTimes;

  @JsonKey(name: 'logoImage')
  String logoImage;

  @JsonKey(name: 'cornerDegree')
  String cornerDegree;

  @JsonKey(name: 'passthrough')
  int passthrough;

  @JsonKey(name: 'marginHorizontal')
  int marginHorizontal;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'rightCorner')
  String rightCorner;

  @JsonKey(name: 'floorId')
  int floorId;

  @JsonKey(name: 'showName')
  String showName;

  @JsonKey(name: 'moduleFunction')
  int moduleFunction;

  @JsonKey(name: 'floorOrder')
  int floorOrder;

  @JsonKey(name: 'head')
  int head;

  @JsonKey(name: 'resultHeight')
  int resultHeight;

  @JsonKey(name: 'rightCornerImg')
  String rightCornerImg;

  @JsonKey(name: 'bottomMargin')
  int bottomMargin;

  @JsonKey(name: 'sourceValue')
  String sourceValue;

  @JsonKey(name: 'textColor')
  String textColor;

  @JsonKey(name: 'marginTop')
  int marginTop;

  @JsonKey(name: 'bottomMarginWidth')
  int bottomMarginWidth;

  @JsonKey(name: 'headType')
  int headType;

  @JsonKey(name: 'bottomMarginColor')
  String bottomMarginColor;

  @JsonKey(name: 'jump')
  Jump jump;

  @JsonKey(name: 'marginColor')
  String marginColor;

  @JsonKey(name: 'rightCornerColor')
  String rightCornerColor;

  @JsonKey(name: 'innnerInterval')
  int innnerInterval;

  @JsonKey(name: 'webViewList')
  List<WebViewList> webViewList;

  @JsonKey(name: 'refreshHeight')
  int refreshHeight;

  @JsonKey(name: 'verticalInterval')
  int verticalInterval;

  @JsonKey(name: 'animationTime')
  int animationTime;

  @JsonKey(name: 'tips')
  String tips;

  @JsonKey(name: 'bottomColor')
  String bottomColor;

  WebViewFloorList(this.curve,this.showTimes,this.logoImage,this.cornerDegree,this.passthrough,this.marginHorizontal,this.type,this.rightCorner,this.floorId,this.showName,this.moduleFunction,this.floorOrder,this.head,this.resultHeight,this.rightCornerImg,this.bottomMargin,this.sourceValue,this.textColor,this.marginTop,this.bottomMarginWidth,this.headType,this.bottomMarginColor,this.jump,this.marginColor,this.rightCornerColor,this.innnerInterval,this.webViewList,this.refreshHeight,this.verticalInterval,this.animationTime,this.tips,this.bottomColor,);

  factory WebViewFloorList.fromJson(Map<String, dynamic> srcJson) => _$WebViewFloorListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$WebViewFloorListToJson(this);

}

  
@JsonSerializable()
  class WebViewList extends Object {

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'expo')
  String expo;

  @JsonKey(name: 'wordsColor')
  String wordsColor;

  @JsonKey(name: 'jump')
  Jump jump;

  WebViewList(this.img,this.expo,this.wordsColor,this.jump,);

  factory WebViewList.fromJson(Map<String, dynamic> srcJson) => _$WebViewListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$WebViewListToJson(this);

}

  
@JsonSerializable()
  class Jump extends Object {

  @JsonKey(name: 'des')
  String des;

  @JsonKey(name: 'shareInfo')
  ShareInfo shareInfo;

  @JsonKey(name: 'params')
  Params params;

  @JsonKey(name: 'srv')
  var srv;

  Jump(this.des,this.shareInfo,this.params,this.srv,);

  factory Jump.fromJson(Map<String, dynamic> srcJson) => _$JumpFromJson(srcJson);

  Map<String, dynamic> toJson() => _$JumpToJson(this);

}

  
@JsonSerializable()
  class ShareInfo extends Object {

  ShareInfo();

  factory ShareInfo.fromJson(Map<String, dynamic> srcJson) => _$ShareInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShareInfoToJson(this);

}

  
@JsonSerializable()
  class Params extends Object {

  @JsonKey(name: 'needLogin')
  String needLogin;

  @JsonKey(name: 'url')
  String url;

  Params(this.needLogin,this.url,);

  factory Params.fromJson(Map<String, dynamic> srcJson) => _$ParamsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ParamsToJson(this);

}

  
