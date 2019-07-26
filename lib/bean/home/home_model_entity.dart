class HomeModelEntity {
	int popMessage;
	String toBottomBtnImg;
	String code;
	int useNewBrands;
	String cycFirstTimeStamp;
	List<Null> lottieCartoonList;
	int lazy;
	int appCenterCartoonSwitch;
	int useComponentImg;
	String searchBgImg;
	int alignedCurrentTime;
	String topBgImgBig;
	int skinSwitch;
	List<HomeModelWebviewfloorlist> webViewFloorList;
	String userCategory;
	String personalSourceValue;
	String searchBgColor;
	int tagAnimations;
	int cycNum;
	String configDisplayVersion;
	List<HomeModelFloorlist> floorList;
	String topBgImgBigColor;
	String topBgImg;
	String recommendAB;
	int showLightIcon;
	int appCenterAnimations;
	String loginText;
	int topIconText;
	String displayVersion;
	String naviVer;
	String toTopBtnImg;
	int executeTime;
	bool canBeDefault;

	HomeModelEntity({this.popMessage, this.toBottomBtnImg, this.code, this.useNewBrands, this.cycFirstTimeStamp, this.lottieCartoonList, this.lazy, this.appCenterCartoonSwitch, this.useComponentImg, this.searchBgImg, this.alignedCurrentTime, this.topBgImgBig, this.skinSwitch, this.webViewFloorList, this.userCategory, this.personalSourceValue, this.searchBgColor, this.tagAnimations, this.cycNum, this.configDisplayVersion, this.floorList, this.topBgImgBigColor, this.topBgImg, this.recommendAB, this.showLightIcon, this.appCenterAnimations, this.loginText, this.topIconText, this.displayVersion, this.naviVer, this.toTopBtnImg, this.executeTime, this.canBeDefault});

	HomeModelEntity.fromJson(Map<String, dynamic> json) {
		popMessage = json['popMessage'];
		toBottomBtnImg = json['toBottomBtnImg'];
		code = json['code'];
		useNewBrands = json['use_new_brands'];
		cycFirstTimeStamp = json['cycFirstTimeStamp'];
		if (json['lottieCartoonList'] != null) {
			lottieCartoonList = new List<Null>();
		}
		lazy = json['lazy'];
		appCenterCartoonSwitch = json['appCenterCartoonSwitch'];
		useComponentImg = json['useComponentImg'];
		searchBgImg = json['searchBgImg'];
		alignedCurrentTime = json['alignedCurrentTime'];
		topBgImgBig = json['topBgImgBig'];
		skinSwitch = json['skinSwitch'];
		if (json['webViewFloorList'] != null) {
			webViewFloorList = new List<HomeModelWebviewfloorlist>();(json['webViewFloorList'] as List).forEach((v) { webViewFloorList.add(new HomeModelWebviewfloorlist.fromJson(v)); });
		}
		userCategory = json['userCategory'];
		personalSourceValue = json['personalSourceValue'];
		searchBgColor = json['searchBgColor'];
		tagAnimations = json['tagAnimations'];
		cycNum = json['cycNum'];
		configDisplayVersion = json['configDisplayVersion'];
		if (json['floorList'] != null) {
			floorList = new List<HomeModelFloorlist>();(json['floorList'] as List).forEach((v) { floorList.add(new HomeModelFloorlist.fromJson(v)); });
		}
		topBgImgBigColor = json['topBgImgBigColor'];
		topBgImg = json['topBgImg'];
		recommendAB = json['recommendAB'];
		showLightIcon = json['showLightIcon'];
		appCenterAnimations = json['appCenterAnimations'];
		loginText = json['loginText'];
		topIconText = json['topIconText'];
		displayVersion = json['displayVersion'];
		naviVer = json['naviVer'];
		toTopBtnImg = json['toTopBtnImg'];
		executeTime = json['executeTime'];
		canBeDefault = json['canBeDefault'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['popMessage'] = this.popMessage;
		data['toBottomBtnImg'] = this.toBottomBtnImg;
		data['code'] = this.code;
		data['use_new_brands'] = this.useNewBrands;
		data['cycFirstTimeStamp'] = this.cycFirstTimeStamp;
		if (this.lottieCartoonList != null) {
      data['lottieCartoonList'] =  [];
    }
		data['lazy'] = this.lazy;
		data['appCenterCartoonSwitch'] = this.appCenterCartoonSwitch;
		data['useComponentImg'] = this.useComponentImg;
		data['searchBgImg'] = this.searchBgImg;
		data['alignedCurrentTime'] = this.alignedCurrentTime;
		data['topBgImgBig'] = this.topBgImgBig;
		data['skinSwitch'] = this.skinSwitch;
		if (this.webViewFloorList != null) {
      data['webViewFloorList'] =  this.webViewFloorList.map((v) => v.toJson()).toList();
    }
		data['userCategory'] = this.userCategory;
		data['personalSourceValue'] = this.personalSourceValue;
		data['searchBgColor'] = this.searchBgColor;
		data['tagAnimations'] = this.tagAnimations;
		data['cycNum'] = this.cycNum;
		data['configDisplayVersion'] = this.configDisplayVersion;
		if (this.floorList != null) {
      data['floorList'] =  this.floorList.map((v) => v.toJson()).toList();
    }
		data['topBgImgBigColor'] = this.topBgImgBigColor;
		data['topBgImg'] = this.topBgImg;
		data['recommendAB'] = this.recommendAB;
		data['showLightIcon'] = this.showLightIcon;
		data['appCenterAnimations'] = this.appCenterAnimations;
		data['loginText'] = this.loginText;
		data['topIconText'] = this.topIconText;
		data['displayVersion'] = this.displayVersion;
		data['naviVer'] = this.naviVer;
		data['toTopBtnImg'] = this.toTopBtnImg;
		data['executeTime'] = this.executeTime;
		data['canBeDefault'] = this.canBeDefault;
		return data;
	}
}

class HomeModelWebviewfloorlist {
	String rightCornerImg;
	int headType;
	int curve;
	String rightCornerColor;
	String type;
	int floorOrder;
	List<HomeModelWebviewfloorlistWebviewlist> webViewList;
	String tips;
	int floorId;
	int head;
	int marginHorizontal;
	int verticalInterval;
	int passthrough;
	String marginColor;
	int innnerInterval;
	String cornerDegree;
	HomeModelWebviewfloorlistJump jump;
	String bottomColor;
	int animationTime;
	String rightCorner;
	String showName;
	int showTimes;
	int moduleFunction;
	int resultHeight;
	String textColor;
	int refreshHeight;
	String logoImage;
	int bottomMargin;
	String bottomMarginColor;
	String sourceValue;
	int marginTop;
	int bottomMarginWidth;

	HomeModelWebviewfloorlist({this.rightCornerImg, this.headType, this.curve, this.rightCornerColor, this.type, this.floorOrder, this.webViewList, this.tips, this.floorId, this.head, this.marginHorizontal, this.verticalInterval, this.passthrough, this.marginColor, this.innnerInterval, this.cornerDegree, this.jump, this.bottomColor, this.animationTime, this.rightCorner, this.showName, this.showTimes, this.moduleFunction, this.resultHeight, this.textColor, this.refreshHeight, this.logoImage, this.bottomMargin, this.bottomMarginColor, this.sourceValue, this.marginTop, this.bottomMarginWidth});

	HomeModelWebviewfloorlist.fromJson(Map<String, dynamic> json) {
		rightCornerImg = json['rightCornerImg'];
		headType = json['headType'];
		curve = json['curve'];
		rightCornerColor = json['rightCornerColor'];
		type = json['type'];
		floorOrder = json['floorOrder'];
		if (json['webViewList'] != null) {
			webViewList = new List<HomeModelWebviewfloorlistWebviewlist>();(json['webViewList'] as List).forEach((v) { webViewList.add(new HomeModelWebviewfloorlistWebviewlist.fromJson(v)); });
		}
		tips = json['tips'];
		floorId = json['floorId'];
		head = json['head'];
		marginHorizontal = json['marginHorizontal'];
		verticalInterval = json['verticalInterval'];
		passthrough = json['passthrough'];
		marginColor = json['marginColor'];
		innnerInterval = json['innnerInterval'];
		cornerDegree = json['cornerDegree'];
		jump = json['jump'] != null ? new HomeModelWebviewfloorlistJump.fromJson(json['jump']) : null;
		bottomColor = json['bottomColor'];
		animationTime = json['animationTime'];
		rightCorner = json['rightCorner'];
		showName = json['showName'];
		showTimes = json['showTimes'];
		moduleFunction = json['moduleFunction'];
		resultHeight = json['resultHeight'];
		textColor = json['textColor'];
		refreshHeight = json['refreshHeight'];
		logoImage = json['logoImage'];
		bottomMargin = json['bottomMargin'];
		bottomMarginColor = json['bottomMarginColor'];
		sourceValue = json['sourceValue'];
		marginTop = json['marginTop'];
		bottomMarginWidth = json['bottomMarginWidth'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['rightCornerImg'] = this.rightCornerImg;
		data['headType'] = this.headType;
		data['curve'] = this.curve;
		data['rightCornerColor'] = this.rightCornerColor;
		data['type'] = this.type;
		data['floorOrder'] = this.floorOrder;
		if (this.webViewList != null) {
      data['webViewList'] =  this.webViewList.map((v) => v.toJson()).toList();
    }
		data['tips'] = this.tips;
		data['floorId'] = this.floorId;
		data['head'] = this.head;
		data['marginHorizontal'] = this.marginHorizontal;
		data['verticalInterval'] = this.verticalInterval;
		data['passthrough'] = this.passthrough;
		data['marginColor'] = this.marginColor;
		data['innnerInterval'] = this.innnerInterval;
		data['cornerDegree'] = this.cornerDegree;
		if (this.jump != null) {
      data['jump'] = this.jump.toJson();
    }
		data['bottomColor'] = this.bottomColor;
		data['animationTime'] = this.animationTime;
		data['rightCorner'] = this.rightCorner;
		data['showName'] = this.showName;
		data['showTimes'] = this.showTimes;
		data['moduleFunction'] = this.moduleFunction;
		data['resultHeight'] = this.resultHeight;
		data['textColor'] = this.textColor;
		data['refreshHeight'] = this.refreshHeight;
		data['logoImage'] = this.logoImage;
		data['bottomMargin'] = this.bottomMargin;
		data['bottomMarginColor'] = this.bottomMarginColor;
		data['sourceValue'] = this.sourceValue;
		data['marginTop'] = this.marginTop;
		data['bottomMarginWidth'] = this.bottomMarginWidth;
		return data;
	}
}

class HomeModelWebviewfloorlistWebviewlist {
	String img;
	String wordsColor;
	String expo;
	HomeModelWebviewfloorlistWebviewlistJump jump;

	HomeModelWebviewfloorlistWebviewlist({this.img, this.wordsColor, this.expo, this.jump});

	HomeModelWebviewfloorlistWebviewlist.fromJson(Map<String, dynamic> json) {
		img = json['img'];
		wordsColor = json['wordsColor'];
		expo = json['expo'];
		jump = json['jump'] != null ? new HomeModelWebviewfloorlistWebviewlistJump.fromJson(json['jump']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['img'] = this.img;
		data['wordsColor'] = this.wordsColor;
		data['expo'] = this.expo;
		if (this.jump != null) {
      data['jump'] = this.jump.toJson();
    }
		return data;
	}
}

class HomeModelWebviewfloorlistWebviewlistJump {
	HomeModelWebviewfloorlistWebviewlistJumpShareinfo shareInfo;
	String des;
	int srv;
	HomeModelWebviewfloorlistWebviewlistJumpParams params;

	HomeModelWebviewfloorlistWebviewlistJump({this.shareInfo, this.des, this.srv, this.params});

	HomeModelWebviewfloorlistWebviewlistJump.fromJson(Map<String, dynamic> json) {
		shareInfo = json['shareInfo'] != null ? new HomeModelWebviewfloorlistWebviewlistJumpShareinfo.fromJson(json['shareInfo']) : null;
		des = json['des'];
		srv = json['srv'];
		params = json['params'] != null ? new HomeModelWebviewfloorlistWebviewlistJumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.shareInfo != null) {
      data['shareInfo'] = this.shareInfo.toJson();
    }
		data['des'] = this.des;
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class HomeModelWebviewfloorlistWebviewlistJumpShareinfo {


	HomeModelWebviewfloorlistWebviewlistJumpShareinfo();

	HomeModelWebviewfloorlistWebviewlistJumpShareinfo.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class HomeModelWebviewfloorlistWebviewlistJumpParams {
	String needLogin;
	String url;

	HomeModelWebviewfloorlistWebviewlistJumpParams({this.needLogin, this.url});

	HomeModelWebviewfloorlistWebviewlistJumpParams.fromJson(Map<String, dynamic> json) {
		needLogin = json['needLogin'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['needLogin'] = this.needLogin;
		data['url'] = this.url;
		return data;
	}
}

class HomeModelWebviewfloorlistJump {
	int srv;
	HomeModelWebviewfloorlistJumpParams params;

	HomeModelWebviewfloorlistJump({this.srv, this.params});

	HomeModelWebviewfloorlistJump.fromJson(Map<String, dynamic> json) {
		srv = json['srv'];
		params = json['params'] != null ? new HomeModelWebviewfloorlistJumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class HomeModelWebviewfloorlistJumpParams {


	HomeModelWebviewfloorlistJumpParams();

	HomeModelWebviewfloorlistJumpParams.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class HomeModelFloorlist {
	int jumpType;
	int showShadow;
	String img;
	int headType;
	String rightCornerImg;
	int curve;
	int needUpdate;
	String rightCornerColor;
	String type;
	String jumpTo;
	int floorOrder;
	HomeModelFloorlistMorejump moreJump;
	List<HomeModelFloorlistContent> content;
	int floorId;
	int head;
	int marginHorizontal;
	int verticalInterval;
	String functionId;
	String shareContent;
	String bgColor;
	String param;
	String marginColor;
	int isNewStyle;
	int innnerInterval;
	String expo;
	String cornerDegree;
	HomeModelFloorlistJump jump;
	String bottomColor;
	String rightCorner;
	String showName;
	int slipTime;
	String shareAvatar;
	String textColor;
	String url;
	String floorDisplayVersion;
	String logoImage;
	String shareTitle;
	int bottomMargin;
	String bottomMarginColor;
	int isShare;
	String shareUrl;
	int isShadow;
	String sourceValue;
	int marginTop;
	int bottomMarginWidth;
	int showLines;

	HomeModelFloorlist({this.jumpType, this.showShadow, this.img, this.headType, this.rightCornerImg, this.curve, this.needUpdate, this.rightCornerColor, this.type, this.jumpTo, this.floorOrder, this.moreJump, this.content, this.floorId, this.head, this.marginHorizontal, this.verticalInterval, this.functionId, this.shareContent, this.bgColor, this.param, this.marginColor, this.isNewStyle, this.innnerInterval, this.expo, this.cornerDegree, this.jump, this.bottomColor, this.rightCorner, this.showName, this.slipTime, this.shareAvatar, this.textColor, this.url, this.floorDisplayVersion, this.logoImage, this.shareTitle, this.bottomMargin, this.bottomMarginColor, this.isShare, this.shareUrl, this.isShadow, this.sourceValue, this.marginTop, this.bottomMarginWidth, this.showLines});

	HomeModelFloorlist.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		showShadow = json['showShadow'];
		img = json['img'];
		headType = json['headType'];
		rightCornerImg = json['rightCornerImg'];
		curve = json['curve'];
		needUpdate = json['needUpdate'];
		rightCornerColor = json['rightCornerColor'];
		type = json['type'];
		jumpTo = json['jumpTo'];
		floorOrder = json['floorOrder'];
		moreJump = json['moreJump'] != null ? new HomeModelFloorlistMorejump.fromJson(json['moreJump']) : null;
		if (json['content'] != null) {
			content = new List<HomeModelFloorlistContent>();(json['content'] as List).forEach((v) { content.add(new HomeModelFloorlistContent.fromJson(v)); });
		}
		floorId = json['floorId'];
		head = json['head'];
		marginHorizontal = json['marginHorizontal'];
		verticalInterval = json['verticalInterval'];
		functionId = json['functionId'];
		shareContent = json['shareContent'];
		bgColor = json['bgColor'];
		param = json['param'];
		marginColor = json['marginColor'];
		isNewStyle = json['isNewStyle'];
		innnerInterval = json['innnerInterval'];
		expo = json['expo'];
		cornerDegree = json['cornerDegree'];
		jump = json['jump'] != null ? new HomeModelFloorlistJump.fromJson(json['jump']) : null;
		bottomColor = json['bottomColor'];
		rightCorner = json['rightCorner'];
		showName = json['showName'];
		slipTime = json['slipTime'];
		shareAvatar = json['shareAvatar'];
		textColor = json['textColor'];
		url = json['url'];
		floorDisplayVersion = json['floorDisplayVersion'];
		logoImage = json['logoImage'];
		shareTitle = json['shareTitle'];
		bottomMargin = json['bottomMargin'];
		bottomMarginColor = json['bottomMarginColor'];
		isShare = json['isShare'];
		shareUrl = json['shareUrl'];
		isShadow = json['isShadow'];
		sourceValue = json['sourceValue'];
		marginTop = json['marginTop'];
		bottomMarginWidth = json['bottomMarginWidth'];
		showLines = json['showLines'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['showShadow'] = this.showShadow;
		data['img'] = this.img;
		data['headType'] = this.headType;
		data['rightCornerImg'] = this.rightCornerImg;
		data['curve'] = this.curve;
		data['needUpdate'] = this.needUpdate;
		data['rightCornerColor'] = this.rightCornerColor;
		data['type'] = this.type;
		data['jumpTo'] = this.jumpTo;
		data['floorOrder'] = this.floorOrder;
		if (this.moreJump != null) {
      data['moreJump'] = this.moreJump.toJson();
    }
		if (this.content != null) {
      data['content'] =  this.content.map((v) => v.toJson()).toList();
    }
		data['floorId'] = this.floorId;
		data['head'] = this.head;
		data['marginHorizontal'] = this.marginHorizontal;
		data['verticalInterval'] = this.verticalInterval;
		data['functionId'] = this.functionId;
		data['shareContent'] = this.shareContent;
		data['bgColor'] = this.bgColor;
		data['param'] = this.param;
		data['marginColor'] = this.marginColor;
		data['isNewStyle'] = this.isNewStyle;
		data['innnerInterval'] = this.innnerInterval;
		data['expo'] = this.expo;
		data['cornerDegree'] = this.cornerDegree;
		if (this.jump != null) {
      data['jump'] = this.jump.toJson();
    }
		data['bottomColor'] = this.bottomColor;
		data['rightCorner'] = this.rightCorner;
		data['showName'] = this.showName;
		data['slipTime'] = this.slipTime;
		data['shareAvatar'] = this.shareAvatar;
		data['textColor'] = this.textColor;
		data['url'] = this.url;
		data['floorDisplayVersion'] = this.floorDisplayVersion;
		data['logoImage'] = this.logoImage;
		data['shareTitle'] = this.shareTitle;
		data['bottomMargin'] = this.bottomMargin;
		data['bottomMarginColor'] = this.bottomMarginColor;
		data['isShare'] = this.isShare;
		data['shareUrl'] = this.shareUrl;
		data['isShadow'] = this.isShadow;
		data['sourceValue'] = this.sourceValue;
		data['marginTop'] = this.marginTop;
		data['bottomMarginWidth'] = this.bottomMarginWidth;
		data['showLines'] = this.showLines;
		return data;
	}
}

class HomeModelFloorlistMorejump {
	String des;
	String srv;
	HomeModelFloorlistMorejumpParams params;

	HomeModelFloorlistMorejump({this.des, this.srv, this.params});

	HomeModelFloorlistMorejump.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		srv = json['srv'];
		params = json['params'] != null ? new HomeModelFloorlistMorejumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class HomeModelFloorlistMorejumpParams {


	HomeModelFloorlistMorejumpParams();

	HomeModelFloorlistMorejumpParams.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class HomeModelFloorlistContent {
	String extensionId;
	int sortno;
	int wareDisplayType;
	String clickUrl;
	int activityId;
	String abt;
	String horizontalImag;
	String exposalUrl;
	String sourceTag;
	String title;
	HomeModelFloorlistContentJump jump;

	HomeModelFloorlistContent({this.extensionId, this.sortno, this.wareDisplayType, this.clickUrl, this.activityId, this.abt, this.horizontalImag, this.exposalUrl, this.sourceTag, this.title, this.jump});

	HomeModelFloorlistContent.fromJson(Map<String, dynamic> json) {
		extensionId = json['extension_id'];
		sortno = json['sortno'];
		wareDisplayType = json['wareDisplayType'];
		clickUrl = json['clickUrl'];
		activityId = json['activityId'];
		abt = json['abt'];
		horizontalImag = json['horizontalImag'];
		exposalUrl = json['exposalUrl'];
		sourceTag = json['sourceTag'];
		title = json['title'];
		jump = json['jump'] != null ? new HomeModelFloorlistContentJump.fromJson(json['jump']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['extension_id'] = this.extensionId;
		data['sortno'] = this.sortno;
		data['wareDisplayType'] = this.wareDisplayType;
		data['clickUrl'] = this.clickUrl;
		data['activityId'] = this.activityId;
		data['abt'] = this.abt;
		data['horizontalImag'] = this.horizontalImag;
		data['exposalUrl'] = this.exposalUrl;
		data['sourceTag'] = this.sourceTag;
		data['title'] = this.title;
		if (this.jump != null) {
      data['jump'] = this.jump.toJson();
    }
		return data;
	}
}

class HomeModelFloorlistContentJump {
	String des;
	String srv;
	HomeModelFloorlistContentJumpParams params;

	HomeModelFloorlistContentJump({this.des, this.srv, this.params});

	HomeModelFloorlistContentJump.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		srv = json['srv'];
		params = json['params'] != null ? new HomeModelFloorlistContentJumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class HomeModelFloorlistContentJumpParams {
	String url;

	HomeModelFloorlistContentJumpParams({this.url});

	HomeModelFloorlistContentJumpParams.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class HomeModelFloorlistJump {
	String des;
	String srv;
	HomeModelFloorlistJumpParams params;

	HomeModelFloorlistJump({this.des, this.srv, this.params});

	HomeModelFloorlistJump.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		srv = json['srv'];
		params = json['params'] != null ? new HomeModelFloorlistJumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class HomeModelFloorlistJumpParams {
	String abTestUI;
	String merge;
	String abTestScanQuery;

	HomeModelFloorlistJumpParams({this.abTestUI, this.merge, this.abTestScanQuery});

	HomeModelFloorlistJumpParams.fromJson(Map<String, dynamic> json) {
		abTestUI = json['abTestUI'];
		merge = json['merge'];
		abTestScanQuery = json['abTestScanQuery'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['abTestUI'] = this.abTestUI;
		data['merge'] = this.merge;
		data['abTestScanQuery'] = this.abTestScanQuery;
		return data;
	}
}
