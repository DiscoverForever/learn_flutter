class UserInfoResponseEntity {
	int code;
	List<UserInfoResponseFloor> floors;
	UserInfoResponseOthers others;

	UserInfoResponseEntity({this.code, this.floors, this.others});

	UserInfoResponseEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['floors'] != null) {
			floors = new List<UserInfoResponseFloor>();(json['floors'] as List).forEach((v) { floors.add(new UserInfoResponseFloor.fromJson(v)); });
		}
		others = json['others'] != null ? new UserInfoResponseOthers.fromJson(json['others']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.floors != null) {
      data['floors'] =  this.floors.map((v) => v.toJson()).toList();
    }
		if (this.others != null) {
      data['others'] = this.others.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloor {
	UserInfoResponseFloorsCf cf;
	UserInfoResponseFloorsData data;
	int sortId;
	String mId;
	String refId;
	String bId;

	UserInfoResponseFloor({this.cf, this.data, this.sortId, this.mId, this.refId, this.bId});

	UserInfoResponseFloor.fromJson(Map<String, dynamic> json) {
		cf = json['cf'] != null ? new UserInfoResponseFloorsCf.fromJson(json['cf']) : null;
		data = json['data'] != null ? new UserInfoResponseFloorsData.fromJson(json['data']) : null;
		sortId = json['sortId'];
		mId = json['mId'];
		refId = json['refId'];
		bId = json['bId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.cf != null) {
      data['cf'] = this.cf.toJson();
    }
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['sortId'] = this.sortId;
		data['mId'] = this.mId;
		data['refId'] = this.refId;
		data['bId'] = this.bId;
		return data;
	}
}

class UserInfoResponseFloorsCf {
	String spl;
	String bgc;

	UserInfoResponseFloorsCf({this.spl, this.bgc});

	UserInfoResponseFloorsCf.fromJson(Map<String, dynamic> json) {
		spl = json['spl'];
		bgc = json['bgc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['spl'] = this.spl;
		data['bgc'] = this.bgc;
		return data;
	}
}

class UserInfoResponseFloorsData {
	String answerImgUrl;
	UserInfoResponseFloorsDataTitle title;
	List<String> supportFloors;
	UserInfoResponseFloorsDataBgimginfo bgImgInfo;
	String tips;
	String questionText;
	UserInfoResponseFloorsDataMaidian maiDian;
	UserInfoResponseFloorsDataUserlevelinfo userLevelInfo;
	String testParam;
	String strategyId;
	int enc;
	String text;
	String iconUrl;
	String attentionList;
	List<UserInfoResponseFloorsDataWalletlist> walletList;
	UserInfoResponseFloorsDataBlackcardinfo blackCardInfo;
	List<UserInfoResponseFloorsDataMylist> myList;
	UserInfoResponseFloorsDataUserinfosns userInfoSns;
	List<UserInfoResponseFloorsDataOrderlist> orderList;
	UserInfoResponseFloorsDataTextcolornode textColorNode;
	List<UserInfoResponseFloorsDataCardsresetorderinfo> cardsResetOrderInfo;
	List<UserInfoResponseFloorsDataJingxiangcredit> jingxiangCredit;
	UserInfoResponseFloorsDataExtendinfo extendInfo;
	UserInfoResponseFloorsDataCommoninfo commonInfo;
	List<UserInfoResponseFloorsDataBanner> banners;
	UserInfoResponseFloorsDataExpomta expoMta;
	List<UserInfoResponseFloorsDataNode> nodes;
	String questionImgUrl;
	UserInfoResponseFloorsDataTopnavigationbar topNavigationBar;
	int style;
	UserInfoResponseFloorsDataBizdata bizData;
	String testId;
	int userType;
	List<UserInfoResponseFloorsDataInfolist> infoList;
	int labelColorStyle;
	UserInfoResponseFloorsDataClosereminder closeReminder;
	UserInfoResponseFloorsDataExtrainfo extraInfo;

	UserInfoResponseFloorsData({this.answerImgUrl, this.title, this.supportFloors, this.bgImgInfo, this.tips, this.questionText, this.maiDian, this.userLevelInfo, this.testParam, this.strategyId, this.enc, this.text, this.iconUrl, this.attentionList, this.walletList, this.blackCardInfo, this.myList, this.userInfoSns, this.orderList, this.textColorNode, this.cardsResetOrderInfo, this.jingxiangCredit, this.extendInfo, this.commonInfo, this.banners, this.expoMta, this.nodes, this.questionImgUrl, this.topNavigationBar, this.style, this.bizData, this.testId, this.userType, this.infoList, this.labelColorStyle, this.closeReminder, this.extraInfo});

	UserInfoResponseFloorsData.fromJson(Map<String, dynamic> json) {
		answerImgUrl = json['answerImgUrl'];
		title = json['title'] != null ? new UserInfoResponseFloorsDataTitle.fromJson(json['title']) : null;
		supportFloors = json['supportFloors']?.cast<String>();
		bgImgInfo = json['bgImgInfo'] != null ? new UserInfoResponseFloorsDataBgimginfo.fromJson(json['bgImgInfo']) : null;
		tips = json['tips'];
		questionText = json['questionText'];
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataMaidian.fromJson(json['maiDian']) : null;
		userLevelInfo = json['userLevelInfo'] != null ? new UserInfoResponseFloorsDataUserlevelinfo.fromJson(json['userLevelInfo']) : null;
		testParam = json['testParam'];
		strategyId = json['strategyId'];
		enc = json['enc'];
		text = json['text'];
		iconUrl = json['iconUrl'];
		attentionList = json['attentionList'];
		if (json['walletList'] != null) {
			walletList = new List<UserInfoResponseFloorsDataWalletlist>();(json['walletList'] as List).forEach((v) { walletList.add(new UserInfoResponseFloorsDataWalletlist.fromJson(v)); });
		}
		blackCardInfo = json['blackCardInfo'] != null ? new UserInfoResponseFloorsDataBlackcardinfo.fromJson(json['blackCardInfo']) : null;
		if (json['myList'] != null) {
			myList = new List<UserInfoResponseFloorsDataMylist>();(json['myList'] as List).forEach((v) { myList.add(new UserInfoResponseFloorsDataMylist.fromJson(v)); });
		}
		userInfoSns = json['userInfoSns'] != null ? new UserInfoResponseFloorsDataUserinfosns.fromJson(json['userInfoSns']) : null;
		if (json['orderList'] != null) {
			orderList = new List<UserInfoResponseFloorsDataOrderlist>();(json['orderList'] as List).forEach((v) { orderList.add(new UserInfoResponseFloorsDataOrderlist.fromJson(v)); });
		}
		textColorNode = json['textColorNode'] != null ? new UserInfoResponseFloorsDataTextcolornode.fromJson(json['textColorNode']) : null;
		if (json['cardsResetOrderInfo'] != null) {
			cardsResetOrderInfo = new List<UserInfoResponseFloorsDataCardsresetorderinfo>();(json['cardsResetOrderInfo'] as List).forEach((v) { cardsResetOrderInfo.add(new UserInfoResponseFloorsDataCardsresetorderinfo.fromJson(v)); });
		}
		if (json['jingxiangCredit'] != null) {
			jingxiangCredit = new List<UserInfoResponseFloorsDataJingxiangcredit>();(json['jingxiangCredit'] as List).forEach((v) { jingxiangCredit.add(new UserInfoResponseFloorsDataJingxiangcredit.fromJson(v)); });
		}
		extendInfo = json['extendInfo'] != null ? new UserInfoResponseFloorsDataExtendinfo.fromJson(json['extendInfo']) : null;
		commonInfo = json['commonInfo'] != null ? new UserInfoResponseFloorsDataCommoninfo.fromJson(json['commonInfo']) : null;
		if (json['banners'] != null) {
			banners = new List<UserInfoResponseFloorsDataBanner>();(json['banners'] as List).forEach((v) { banners.add(new UserInfoResponseFloorsDataBanner.fromJson(v)); });
		}
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataExpomta.fromJson(json['expoMta']) : null;
		if (json['nodes'] != null) {
			nodes = new List<UserInfoResponseFloorsDataNode>();(json['nodes'] as List).forEach((v) { nodes.add(new UserInfoResponseFloorsDataNode.fromJson(v)); });
		}
		questionImgUrl = json['questionImgUrl'];
		topNavigationBar = json['topNavigationBar'] != null ? new UserInfoResponseFloorsDataTopnavigationbar.fromJson(json['topNavigationBar']) : null;
		style = json['style'];
		bizData = json['bizData'] != null ? new UserInfoResponseFloorsDataBizdata.fromJson(json['bizData']) : null;
		testId = json['testId'];
		userType = json['userType'];
		if (json['infoList'] != null) {
			infoList = new List<UserInfoResponseFloorsDataInfolist>();(json['infoList'] as List).forEach((v) { infoList.add(new UserInfoResponseFloorsDataInfolist.fromJson(v)); });
		}
		labelColorStyle = json['labelColorStyle'];
		closeReminder = json['closeReminder'] != null ? new UserInfoResponseFloorsDataClosereminder.fromJson(json['closeReminder']) : null;
		extraInfo = json['extraInfo'] != null ? new UserInfoResponseFloorsDataExtrainfo.fromJson(json['extraInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['answerImgUrl'] = this.answerImgUrl;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['supportFloors'] = this.supportFloors;
		if (this.bgImgInfo != null) {
      data['bgImgInfo'] = this.bgImgInfo.toJson();
    }
		data['tips'] = this.tips;
		data['questionText'] = this.questionText;
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		if (this.userLevelInfo != null) {
      data['userLevelInfo'] = this.userLevelInfo.toJson();
    }
		data['testParam'] = this.testParam;
		data['strategyId'] = this.strategyId;
		data['enc'] = this.enc;
		data['text'] = this.text;
		data['iconUrl'] = this.iconUrl;
		data['attentionList'] = this.attentionList;
		if (this.walletList != null) {
      data['walletList'] =  this.walletList.map((v) => v.toJson()).toList();
    }
		if (this.blackCardInfo != null) {
      data['blackCardInfo'] = this.blackCardInfo.toJson();
    }
		if (this.myList != null) {
      data['myList'] =  this.myList.map((v) => v.toJson()).toList();
    }
		if (this.userInfoSns != null) {
      data['userInfoSns'] = this.userInfoSns.toJson();
    }
		if (this.orderList != null) {
      data['orderList'] =  this.orderList.map((v) => v.toJson()).toList();
    }
		if (this.textColorNode != null) {
      data['textColorNode'] = this.textColorNode.toJson();
    }
		if (this.cardsResetOrderInfo != null) {
      data['cardsResetOrderInfo'] =  this.cardsResetOrderInfo.map((v) => v.toJson()).toList();
    }
		if (this.jingxiangCredit != null) {
      data['jingxiangCredit'] =  this.jingxiangCredit.map((v) => v.toJson()).toList();
    }
		if (this.extendInfo != null) {
      data['extendInfo'] = this.extendInfo.toJson();
    }
		if (this.commonInfo != null) {
      data['commonInfo'] = this.commonInfo.toJson();
    }
		if (this.banners != null) {
      data['banners'] =  this.banners.map((v) => v.toJson()).toList();
    }
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		if (this.nodes != null) {
      data['nodes'] =  this.nodes.map((v) => v.toJson()).toList();
    }
		data['questionImgUrl'] = this.questionImgUrl;
		if (this.topNavigationBar != null) {
      data['topNavigationBar'] = this.topNavigationBar.toJson();
    }
		data['style'] = this.style;
		if (this.bizData != null) {
      data['bizData'] = this.bizData.toJson();
    }
		data['testId'] = this.testId;
		data['userType'] = this.userType;
		if (this.infoList != null) {
      data['infoList'] =  this.infoList.map((v) => v.toJson()).toList();
    }
		data['labelColorStyle'] = this.labelColorStyle;
		if (this.closeReminder != null) {
      data['closeReminder'] = this.closeReminder.toJson();
    }
		if (this.extraInfo != null) {
      data['extraInfo'] = this.extraInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataTitle {
	String color;
	String value;

	UserInfoResponseFloorsDataTitle({this.color, this.value});

	UserInfoResponseFloorsDataTitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataBgimginfo {
	String radianImg;
	String radianImgDark;
	String bgImg;

	UserInfoResponseFloorsDataBgimginfo({this.radianImg, this.radianImgDark, this.bgImg});

	UserInfoResponseFloorsDataBgimginfo.fromJson(Map<String, dynamic> json) {
		radianImg = json['radianImg'];
		radianImgDark = json['radianImgDark'];
		bgImg = json['bgImg'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['radianImg'] = this.radianImg;
		data['radianImgDark'] = this.radianImgDark;
		data['bgImg'] = this.bgImg;
		return data;
	}
}

class UserInfoResponseFloorsDataMaidian {
	String noMoreSure;
	String noMore;
	String xSet;
	String notNow;
	String more;
	String noMoreThink;

	UserInfoResponseFloorsDataMaidian({this.noMoreSure, this.noMore, this.xSet, this.notNow, this.more, this.noMoreThink});

	UserInfoResponseFloorsDataMaidian.fromJson(Map<String, dynamic> json) {
		noMoreSure = json['noMoreSure'];
		noMore = json['noMore'];
		xSet = json['set'];
		notNow = json['notNow'];
		more = json['more'];
		noMoreThink = json['noMoreThink'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['noMoreSure'] = this.noMoreSure;
		data['noMore'] = this.noMore;
		data['set'] = this.xSet;
		data['notNow'] = this.notNow;
		data['more'] = this.more;
		data['noMoreThink'] = this.noMoreThink;
		return data;
	}
}

class UserInfoResponseFloorsDataUserlevelinfo {
	int type;
	String userLevelClass;

	UserInfoResponseFloorsDataUserlevelinfo({this.type, this.userLevelClass});

	UserInfoResponseFloorsDataUserlevelinfo.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		userLevelClass = json['userLevelClass'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['type'] = this.type;
		data['userLevelClass'] = this.userLevelClass;
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlist {
	String encStr;
	String darkImage;
	UserInfoResponseFloorsDataWalletlistTitle title;
	int updateRedDotTime;
	UserInfoResponseFloorsDataWalletlistExpomta expoMta;
	String safeImage;
	String functionId;
	String supportHide;
	int redDotType;
	UserInfoResponseFloorsDataWalletlistClickmta clickMta;
	String numContent;
	UserInfoResponseFloorsDataWalletlistSubtitle subtitle;
	int enc;
	int contentType;
	UserInfoResponseFloorsDataWalletlistJumpinfo jumpInfo;

	UserInfoResponseFloorsDataWalletlist({this.encStr, this.darkImage, this.title, this.updateRedDotTime, this.expoMta, this.safeImage, this.functionId, this.supportHide, this.redDotType, this.clickMta, this.numContent, this.subtitle, this.enc, this.contentType, this.jumpInfo});

	UserInfoResponseFloorsDataWalletlist.fromJson(Map<String, dynamic> json) {
		encStr = json['encStr'];
		darkImage = json['darkImage'];
		title = json['title'] != null ? new UserInfoResponseFloorsDataWalletlistTitle.fromJson(json['title']) : null;
		updateRedDotTime = json['updateRedDotTime'];
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataWalletlistExpomta.fromJson(json['expoMta']) : null;
		safeImage = json['safeImage'];
		functionId = json['functionId'];
		supportHide = json['supportHide'];
		redDotType = json['redDotType'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataWalletlistClickmta.fromJson(json['clickMta']) : null;
		numContent = json['numContent'];
		subtitle = json['subtitle'] != null ? new UserInfoResponseFloorsDataWalletlistSubtitle.fromJson(json['subtitle']) : null;
		enc = json['enc'];
		contentType = json['contentType'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataWalletlistJumpinfo.fromJson(json['jumpInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['encStr'] = this.encStr;
		data['darkImage'] = this.darkImage;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['updateRedDotTime'] = this.updateRedDotTime;
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		data['safeImage'] = this.safeImage;
		data['functionId'] = this.functionId;
		data['supportHide'] = this.supportHide;
		data['redDotType'] = this.redDotType;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		data['numContent'] = this.numContent;
		if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
		data['enc'] = this.enc;
		data['contentType'] = this.contentType;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlistTitle {
	String color;
	String value;

	UserInfoResponseFloorsDataWalletlistTitle({this.color, this.value});

	UserInfoResponseFloorsDataWalletlistTitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlistExpomta {
	String eventId;
	String eventParam;
	String pageLevel;
	String pageId;

	UserInfoResponseFloorsDataWalletlistExpomta({this.eventId, this.eventParam, this.pageLevel, this.pageId});

	UserInfoResponseFloorsDataWalletlistExpomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlistClickmta {
	String eventId;
	String eventParam;
	String pageLevel;
	String pageId;

	UserInfoResponseFloorsDataWalletlistClickmta({this.eventId, this.eventParam, this.pageLevel, this.pageId});

	UserInfoResponseFloorsDataWalletlistClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlistSubtitle {
	String color;
	String value;

	UserInfoResponseFloorsDataWalletlistSubtitle({this.color, this.value});

	UserInfoResponseFloorsDataWalletlistSubtitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataWalletlistJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataWalletlistJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataWalletlistJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataBlackcardinfo {
	String imgUrl;
	String rightText;
	UserInfoResponseFloorsDataBlackcardinfoExpomta expoMta;
	String leftImg;
	UserInfoResponseFloorsDataBlackcardinfoClickmta clickMta;
	int redDotUnixTime;
	String midText;
	int type;
	String textColor;
	String lottieUrl;
	UserInfoResponseFloorsDataBlackcardinfoJumpinfo jumpInfo;
	int flashUnixTime;

	UserInfoResponseFloorsDataBlackcardinfo({this.imgUrl, this.rightText, this.expoMta, this.leftImg, this.clickMta, this.redDotUnixTime, this.midText, this.type, this.textColor, this.lottieUrl, this.jumpInfo, this.flashUnixTime});

	UserInfoResponseFloorsDataBlackcardinfo.fromJson(Map<String, dynamic> json) {
		imgUrl = json['imgUrl'];
		rightText = json['rightText'];
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataBlackcardinfoExpomta.fromJson(json['expoMta']) : null;
		leftImg = json['leftImg'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataBlackcardinfoClickmta.fromJson(json['clickMta']) : null;
		redDotUnixTime = json['redDotUnixTime'];
		midText = json['midText'];
		type = json['type'];
		textColor = json['textColor'];
		lottieUrl = json['lottieUrl'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataBlackcardinfoJumpinfo.fromJson(json['jumpInfo']) : null;
		flashUnixTime = json['flashUnixTime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgUrl'] = this.imgUrl;
		data['rightText'] = this.rightText;
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		data['leftImg'] = this.leftImg;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		data['redDotUnixTime'] = this.redDotUnixTime;
		data['midText'] = this.midText;
		data['type'] = this.type;
		data['textColor'] = this.textColor;
		data['lottieUrl'] = this.lottieUrl;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		data['flashUnixTime'] = this.flashUnixTime;
		return data;
	}
}

class UserInfoResponseFloorsDataBlackcardinfoExpomta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataBlackcardinfoExpomta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataBlackcardinfoExpomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataBlackcardinfoClickmta {
	String eventId;
	String eventParam;
	String pageLevel;
	String pageId;

	UserInfoResponseFloorsDataBlackcardinfoClickmta({this.eventId, this.eventParam, this.pageLevel, this.pageId});

	UserInfoResponseFloorsDataBlackcardinfoClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataBlackcardinfoJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataBlackcardinfoJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataBlackcardinfoJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataMylist {
	String questionContent;
	String userImg;
	String question;
	String userText;
	String letMeAnswerText;
	String nickName;
	String wareImg;
	String id;
	String answerCountText;
	String skuId;

	UserInfoResponseFloorsDataMylist({this.questionContent, this.userImg, this.question, this.userText, this.letMeAnswerText, this.nickName, this.wareImg, this.id, this.answerCountText, this.skuId});

	UserInfoResponseFloorsDataMylist.fromJson(Map<String, dynamic> json) {
		questionContent = json['questionContent'];
		userImg = json['userImg'];
		question = json['question'];
		userText = json['userText'];
		letMeAnswerText = json['letMeAnswerText'];
		nickName = json['nickName'];
		wareImg = json['wareImg'];
		id = json['id'];
		answerCountText = json['answerCountText'];
		skuId = json['skuId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['questionContent'] = this.questionContent;
		data['userImg'] = this.userImg;
		data['question'] = this.question;
		data['userText'] = this.userText;
		data['letMeAnswerText'] = this.letMeAnswerText;
		data['nickName'] = this.nickName;
		data['wareImg'] = this.wareImg;
		data['id'] = this.id;
		data['answerCountText'] = this.answerCountText;
		data['skuId'] = this.skuId;
		return data;
	}
}

class UserInfoResponseFloorsDataUserinfosns {
	String imgUrl;
	String registerImgUrl;
	UserInfoResponseFloorsDataUserinfosnsClickmta clickMta;
	String faceLoginImg;
	String title;
	UserInfoResponseFloorsDataUserinfosnsJumpinfo jumpInfo;

	UserInfoResponseFloorsDataUserinfosns({this.imgUrl, this.registerImgUrl, this.clickMta, this.faceLoginImg, this.title, this.jumpInfo});

	UserInfoResponseFloorsDataUserinfosns.fromJson(Map<String, dynamic> json) {
		imgUrl = json['imgUrl'];
		registerImgUrl = json['registerImgUrl'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataUserinfosnsClickmta.fromJson(json['clickMta']) : null;
		faceLoginImg = json['faceLoginImg'];
		title = json['title'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataUserinfosnsJumpinfo.fromJson(json['jumpInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgUrl'] = this.imgUrl;
		data['registerImgUrl'] = this.registerImgUrl;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		data['faceLoginImg'] = this.faceLoginImg;
		data['title'] = this.title;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataUserinfosnsClickmta {
	String eventId;
	String pagerParam;
	String pageLevel;
	String pageId;
	String pageParam;

	UserInfoResponseFloorsDataUserinfosnsClickmta({this.eventId, this.pagerParam, this.pageLevel, this.pageId, this.pageParam});

	UserInfoResponseFloorsDataUserinfosnsClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		pagerParam = json['pagerParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
		pageParam = json['pageParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['pagerParam'] = this.pagerParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		data['pageParam'] = this.pageParam;
		return data;
	}
}

class UserInfoResponseFloorsDataUserinfosnsJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataUserinfosnsJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataUserinfosnsJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataOrderlist {
	String encStr;
	String darkImage;
	UserInfoResponseFloorsDataOrderlistTitle title;
	int updateRedDotTime;
	String safeImage;
	String functionId;
	int redDotType;
	bool isFirstComment;
	UserInfoResponseFloorsDataOrderlistClickmta clickMta;
	UserInfoResponseFloorsDataOrderlistSubtitle subtitle;
	int enc;
	int value;
	UserInfoResponseFloorsDataOrderlistJumpinfo jumpInfo;

	UserInfoResponseFloorsDataOrderlist({this.encStr, this.darkImage, this.title, this.updateRedDotTime, this.safeImage, this.functionId, this.redDotType, this.isFirstComment, this.clickMta, this.subtitle, this.enc, this.value, this.jumpInfo});

	UserInfoResponseFloorsDataOrderlist.fromJson(Map<String, dynamic> json) {
		encStr = json['encStr'];
		darkImage = json['darkImage'];
		title = json['title'] != null ? new UserInfoResponseFloorsDataOrderlistTitle.fromJson(json['title']) : null;
		updateRedDotTime = json['updateRedDotTime'];
		safeImage = json['safeImage'];
		functionId = json['functionId'];
		redDotType = json['redDotType'];
		isFirstComment = json['isFirstComment'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataOrderlistClickmta.fromJson(json['clickMta']) : null;
		subtitle = json['subtitle'] != null ? new UserInfoResponseFloorsDataOrderlistSubtitle.fromJson(json['subtitle']) : null;
		enc = json['enc'];
		value = json['value'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataOrderlistJumpinfo.fromJson(json['jumpInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['encStr'] = this.encStr;
		data['darkImage'] = this.darkImage;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['updateRedDotTime'] = this.updateRedDotTime;
		data['safeImage'] = this.safeImage;
		data['functionId'] = this.functionId;
		data['redDotType'] = this.redDotType;
		data['isFirstComment'] = this.isFirstComment;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
		data['enc'] = this.enc;
		data['value'] = this.value;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataOrderlistTitle {
	String color;
	String value;

	UserInfoResponseFloorsDataOrderlistTitle({this.color, this.value});

	UserInfoResponseFloorsDataOrderlistTitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataOrderlistClickmta {
	String eventId;
	String eventParam;
	String pageLevel;
	String pageId;
	String pageParam;

	UserInfoResponseFloorsDataOrderlistClickmta({this.eventId, this.eventParam, this.pageLevel, this.pageId, this.pageParam});

	UserInfoResponseFloorsDataOrderlistClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
		pageParam = json['pageParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		data['pageParam'] = this.pageParam;
		return data;
	}
}

class UserInfoResponseFloorsDataOrderlistSubtitle {
	String color;
	String value;

	UserInfoResponseFloorsDataOrderlistSubtitle({this.color, this.value});

	UserInfoResponseFloorsDataOrderlistSubtitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataOrderlistJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataOrderlistJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataOrderlistJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataTextcolornode {
	String normal;
	String light;
	String dark;

	UserInfoResponseFloorsDataTextcolornode({this.normal, this.light, this.dark});

	UserInfoResponseFloorsDataTextcolornode.fromJson(Map<String, dynamic> json) {
		normal = json['normal'];
		light = json['light'];
		dark = json['dark'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['normal'] = this.normal;
		data['light'] = this.light;
		data['dark'] = this.dark;
		return data;
	}
}

class UserInfoResponseFloorsDataCardsresetorderinfo {
	String functionId;
	int sort;
	String maidianId;

	UserInfoResponseFloorsDataCardsresetorderinfo({this.functionId, this.sort, this.maidianId});

	UserInfoResponseFloorsDataCardsresetorderinfo.fromJson(Map<String, dynamic> json) {
		functionId = json['functionId'];
		sort = json['sort'];
		maidianId = json['maidianId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['functionId'] = this.functionId;
		data['sort'] = this.sort;
		data['maidianId'] = this.maidianId;
		return data;
	}
}

class UserInfoResponseFloorsDataJingxiangcredit {
	UserInfoResponseFloorsDataJingxiangcreditExpomta expoMta;
	String encStr;
	String functionId;
	UserInfoResponseFloorsDataJingxiangcreditClickmta clickMta;
	int showFlash;
	String text;
	int enc;
	int type;
	String bubbleImg;
	UserInfoResponseFloorsDataJingxiangcreditJumpinfo jumpInfo;
	int timestamp;

	UserInfoResponseFloorsDataJingxiangcredit({this.expoMta, this.encStr, this.functionId, this.clickMta, this.showFlash, this.text, this.enc, this.type, this.bubbleImg, this.jumpInfo, this.timestamp});

	UserInfoResponseFloorsDataJingxiangcredit.fromJson(Map<String, dynamic> json) {
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataJingxiangcreditExpomta.fromJson(json['expoMta']) : null;
		encStr = json['encStr'];
		functionId = json['functionId'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataJingxiangcreditClickmta.fromJson(json['clickMta']) : null;
		showFlash = json['showFlash'];
		text = json['text'];
		enc = json['enc'];
		type = json['type'];
		bubbleImg = json['bubbleImg'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataJingxiangcreditJumpinfo.fromJson(json['jumpInfo']) : null;
		timestamp = json['timestamp'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		data['encStr'] = this.encStr;
		data['functionId'] = this.functionId;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		data['showFlash'] = this.showFlash;
		data['text'] = this.text;
		data['enc'] = this.enc;
		data['type'] = this.type;
		data['bubbleImg'] = this.bubbleImg;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		data['timestamp'] = this.timestamp;
		return data;
	}
}

class UserInfoResponseFloorsDataJingxiangcreditExpomta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataJingxiangcreditExpomta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataJingxiangcreditExpomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataJingxiangcreditClickmta {
	String eventId;
	dynamic eventParam;
	String pageLevel;
	String pageId;

	UserInfoResponseFloorsDataJingxiangcreditClickmta({this.eventId, this.eventParam, this.pageLevel, this.pageId});

	UserInfoResponseFloorsDataJingxiangcreditClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataJingxiangcreditJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataJingxiangcreditJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataJingxiangcreditJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfo {
	UserInfoResponseFloorsDataExtendinfoFooter footer;
	UserInfoResponseFloorsDataExtendinfoHeader header;

	UserInfoResponseFloorsDataExtendinfo({this.footer, this.header});

	UserInfoResponseFloorsDataExtendinfo.fromJson(Map<String, dynamic> json) {
		footer = json['footer'] != null ? new UserInfoResponseFloorsDataExtendinfoFooter.fromJson(json['footer']) : null;
		header = json['header'] != null ? new UserInfoResponseFloorsDataExtendinfoHeader.fromJson(json['header']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.footer != null) {
      data['footer'] = this.footer.toJson();
    }
		if (this.header != null) {
      data['header'] = this.header.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoFooter {
	String text;
	String jumpUrl;

	UserInfoResponseFloorsDataExtendinfoFooter({this.text, this.jumpUrl});

	UserInfoResponseFloorsDataExtendinfoFooter.fromJson(Map<String, dynamic> json) {
		text = json['text'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['text'] = this.text;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeader {
	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3 rightIconText3;
	String labelName;
	String labelColor;

	UserInfoResponseFloorsDataExtendinfoHeader({this.rightIconText3, this.labelName, this.labelColor});

	UserInfoResponseFloorsDataExtendinfoHeader.fromJson(Map<String, dynamic> json) {
		rightIconText3 = json['rightIconText3'] != null ? new UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3.fromJson(json['rightIconText3']) : null;
		labelName = json['labelName'];
		labelColor = json['labelColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.rightIconText3 != null) {
      data['rightIconText3'] = this.rightIconText3.toJson();
    }
		data['labelName'] = this.labelName;
		data['labelColor'] = this.labelColor;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3 {
	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Expomta expoMta;
	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Tipmta tipMta;
	String functionId;
	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Clickmta clickMta;
	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Param param;
	bool hasNext;
	String tip;
	String text;
	String iconUrl;

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3({this.expoMta, this.tipMta, this.functionId, this.clickMta, this.param, this.hasNext, this.tip, this.text, this.iconUrl});

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3.fromJson(Map<String, dynamic> json) {
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Expomta.fromJson(json['expoMta']) : null;
		tipMta = json['tipMta'] != null ? new UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Tipmta.fromJson(json['tipMta']) : null;
		functionId = json['functionId'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Clickmta.fromJson(json['clickMta']) : null;
		param = json['param'] != null ? new UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Param.fromJson(json['param']) : null;
		hasNext = json['hasNext'];
		tip = json['tip'];
		text = json['text'];
		iconUrl = json['iconUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		if (this.tipMta != null) {
      data['tipMta'] = this.tipMta.toJson();
    }
		data['functionId'] = this.functionId;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		if (this.param != null) {
      data['param'] = this.param.toJson();
    }
		data['hasNext'] = this.hasNext;
		data['tip'] = this.tip;
		data['text'] = this.text;
		data['iconUrl'] = this.iconUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Expomta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Expomta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Expomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Tipmta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Tipmta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Tipmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Clickmta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Clickmta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Clickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Param {
	String exchangeId;

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Param({this.exchangeId});

	UserInfoResponseFloorsDataExtendinfoHeaderRighticontext3Param.fromJson(Map<String, dynamic> json) {
		exchangeId = json['exchangeId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['exchangeId'] = this.exchangeId;
		return data;
	}
}

class UserInfoResponseFloorsDataCommoninfo {
	String margin;
	String lableName;
	String angle;

	UserInfoResponseFloorsDataCommoninfo({this.margin, this.lableName, this.angle});

	UserInfoResponseFloorsDataCommoninfo.fromJson(Map<String, dynamic> json) {
		margin = json['margin'];
		lableName = json['lableName'];
		angle = json['angle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['margin'] = this.margin;
		data['lableName'] = this.lableName;
		data['angle'] = this.angle;
		return data;
	}
}

class UserInfoResponseFloorsDataBanner {
	String jumpType;
	String eventId;
	String lableName;
	String eventParam;
	String eventLevel;
	String lableImage;
	String orderGrade;
	String pageId;
	String pageParam;
	String jumpUrl;

	UserInfoResponseFloorsDataBanner({this.jumpType, this.eventId, this.lableName, this.eventParam, this.eventLevel, this.lableImage, this.orderGrade, this.pageId, this.pageParam, this.jumpUrl});

	UserInfoResponseFloorsDataBanner.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		eventId = json['eventId'];
		lableName = json['lableName'];
		eventParam = json['eventParam'];
		eventLevel = json['eventLevel'];
		lableImage = json['lableImage'];
		orderGrade = json['orderGrade'];
		pageId = json['pageId'];
		pageParam = json['pageParam'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['eventId'] = this.eventId;
		data['lableName'] = this.lableName;
		data['eventParam'] = this.eventParam;
		data['eventLevel'] = this.eventLevel;
		data['lableImage'] = this.lableImage;
		data['orderGrade'] = this.orderGrade;
		data['pageId'] = this.pageId;
		data['pageParam'] = this.pageParam;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataExpomta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataExpomta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataExpomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataNode {
	int playTimes;
	dynamic showRedDot;
	UserInfoResponseFloorsDataNodesTitle title;
	int updateRedDotTime;
	String bubbleImg;
	String content;
	UserInfoResponseFloorsDataNodesExpomta expoMta;
	String safeImage;
	String functionId;
	UserInfoResponseFloorsDataNodesClickmta clickMta;
	UserInfoResponseFloorsDataNodesSubtitle subtitle;
	int contentType;
	UserInfoResponseFloorsDataNodesJumpinfo jumpInfo;

	UserInfoResponseFloorsDataNode({this.playTimes, this.showRedDot, this.title, this.updateRedDotTime, this.bubbleImg, this.content, this.expoMta, this.safeImage, this.functionId, this.clickMta, this.subtitle, this.contentType, this.jumpInfo});

	UserInfoResponseFloorsDataNode.fromJson(Map<String, dynamic> json) {
		playTimes = json['playTimes'];
		showRedDot = json['showRedDot'];
		title = json['title'] != null ? new UserInfoResponseFloorsDataNodesTitle.fromJson(json['title']) : null;
		updateRedDotTime = json['updateRedDotTime'];
		bubbleImg = json['bubbleImg'];
		content = json['content'];
		expoMta = json['expoMta'] != null ? new UserInfoResponseFloorsDataNodesExpomta.fromJson(json['expoMta']) : null;
		safeImage = json['safeImage'];
		functionId = json['functionId'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataNodesClickmta.fromJson(json['clickMta']) : null;
		subtitle = json['subtitle'] != null ? new UserInfoResponseFloorsDataNodesSubtitle.fromJson(json['subtitle']) : null;
		contentType = json['contentType'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataNodesJumpinfo.fromJson(json['jumpInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['playTimes'] = this.playTimes;
		data['showRedDot'] = this.showRedDot;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['updateRedDotTime'] = this.updateRedDotTime;
		data['bubbleImg'] = this.bubbleImg;
		data['content'] = this.content;
		if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
		data['safeImage'] = this.safeImage;
		data['functionId'] = this.functionId;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
		data['contentType'] = this.contentType;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataNodesTitle {
	String color;
	String value;

	UserInfoResponseFloorsDataNodesTitle({this.color, this.value});

	UserInfoResponseFloorsDataNodesTitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataNodesExpomta {
	String eventId;
	String eventParam;
	String pageId;

	UserInfoResponseFloorsDataNodesExpomta({this.eventId, this.eventParam, this.pageId});

	UserInfoResponseFloorsDataNodesExpomta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataNodesClickmta {
	String eventId;
	String eventParam;
	String pageLevel;
	String pageId;

	UserInfoResponseFloorsDataNodesClickmta({this.eventId, this.eventParam, this.pageLevel, this.pageId});

	UserInfoResponseFloorsDataNodesClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		return data;
	}
}

class UserInfoResponseFloorsDataNodesSubtitle {
	String color;
	String value;

	UserInfoResponseFloorsDataNodesSubtitle({this.color, this.value});

	UserInfoResponseFloorsDataNodesSubtitle.fromJson(Map<String, dynamic> json) {
		color = json['color'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['color'] = this.color;
		data['value'] = this.value;
		return data;
	}
}

class UserInfoResponseFloorsDataNodesJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataNodesJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataNodesJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataTopnavigationbar {
	String functionId;
	String headImg;
	UserInfoResponseFloorsDataTopnavigationbarClickmta clickMta;
	UserInfoResponseFloorsDataTopnavigationbarSettinginfo settingInfo;
	String contentColor;
	UserInfoResponseFloorsDataTopnavigationbarJumpinfo jumpInfo;

	UserInfoResponseFloorsDataTopnavigationbar({this.functionId, this.headImg, this.clickMta, this.settingInfo, this.contentColor, this.jumpInfo});

	UserInfoResponseFloorsDataTopnavigationbar.fromJson(Map<String, dynamic> json) {
		functionId = json['functionId'];
		headImg = json['headImg'];
		clickMta = json['clickMta'] != null ? new UserInfoResponseFloorsDataTopnavigationbarClickmta.fromJson(json['clickMta']) : null;
		settingInfo = json['settingInfo'] != null ? new UserInfoResponseFloorsDataTopnavigationbarSettinginfo.fromJson(json['settingInfo']) : null;
		contentColor = json['contentColor'];
		jumpInfo = json['jumpInfo'] != null ? new UserInfoResponseFloorsDataTopnavigationbarJumpinfo.fromJson(json['jumpInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['functionId'] = this.functionId;
		data['headImg'] = this.headImg;
		if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
		if (this.settingInfo != null) {
      data['settingInfo'] = this.settingInfo.toJson();
    }
		data['contentColor'] = this.contentColor;
		if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataTopnavigationbarClickmta {
	String eventId;
	String pagerParam;
	String pageLevel;
	String pageId;
	String pageParam;

	UserInfoResponseFloorsDataTopnavigationbarClickmta({this.eventId, this.pagerParam, this.pageLevel, this.pageId, this.pageParam});

	UserInfoResponseFloorsDataTopnavigationbarClickmta.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		pagerParam = json['pagerParam'];
		pageLevel = json['pageLevel'];
		pageId = json['pageId'];
		pageParam = json['pageParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['pagerParam'] = this.pagerParam;
		data['pageLevel'] = this.pageLevel;
		data['pageId'] = this.pageId;
		data['pageParam'] = this.pageParam;
		return data;
	}
}

class UserInfoResponseFloorsDataTopnavigationbarSettinginfo {
	String buttonIcon;
	String buttonType;
	int showRedDot;
	String title;
	int updateRedDotTime;
	String settingId;

	UserInfoResponseFloorsDataTopnavigationbarSettinginfo({this.buttonIcon, this.buttonType, this.showRedDot, this.title, this.updateRedDotTime, this.settingId});

	UserInfoResponseFloorsDataTopnavigationbarSettinginfo.fromJson(Map<String, dynamic> json) {
		buttonIcon = json['buttonIcon'];
		buttonType = json['buttonType'];
		showRedDot = json['showRedDot'];
		title = json['title'];
		updateRedDotTime = json['updateRedDotTime'];
		settingId = json['settingId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['buttonIcon'] = this.buttonIcon;
		data['buttonType'] = this.buttonType;
		data['showRedDot'] = this.showRedDot;
		data['title'] = this.title;
		data['updateRedDotTime'] = this.updateRedDotTime;
		data['settingId'] = this.settingId;
		return data;
	}
}

class UserInfoResponseFloorsDataTopnavigationbarJumpinfo {
	int jumpType;
	int needLogin;
	String jumpUrl;

	UserInfoResponseFloorsDataTopnavigationbarJumpinfo({this.jumpType, this.needLogin, this.jumpUrl});

	UserInfoResponseFloorsDataTopnavigationbarJumpinfo.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		needLogin = json['needLogin'];
		jumpUrl = json['jumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['needLogin'] = this.needLogin;
		data['jumpUrl'] = this.jumpUrl;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdata {
	UserInfoResponseFloorsDataBizdataMaidian maiDian;
	UserInfoResponseFloorsDataBizdataNoticeinfo noticeInfo;
	String style;
	UserInfoResponseFloorsDataBizdataPlusinfo plusInfo;
	UserInfoResponseFloorsDataBizdataContentinfo contentInfo;

	UserInfoResponseFloorsDataBizdata({this.maiDian, this.noticeInfo, this.style, this.plusInfo, this.contentInfo});

	UserInfoResponseFloorsDataBizdata.fromJson(Map<String, dynamic> json) {
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataBizdataMaidian.fromJson(json['maiDian']) : null;
		noticeInfo = json['noticeInfo'] != null ? new UserInfoResponseFloorsDataBizdataNoticeinfo.fromJson(json['noticeInfo']) : null;
		style = json['style'];
		plusInfo = json['plusInfo'] != null ? new UserInfoResponseFloorsDataBizdataPlusinfo.fromJson(json['plusInfo']) : null;
		contentInfo = json['contentInfo'] != null ? new UserInfoResponseFloorsDataBizdataContentinfo.fromJson(json['contentInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		if (this.noticeInfo != null) {
      data['noticeInfo'] = this.noticeInfo.toJson();
    }
		data['style'] = this.style;
		if (this.plusInfo != null) {
      data['plusInfo'] = this.plusInfo.toJson();
    }
		if (this.contentInfo != null) {
      data['contentInfo'] = this.contentInfo.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataMaidian {
	String eventId;
	String eventParam;

	UserInfoResponseFloorsDataBizdataMaidian({this.eventId, this.eventParam});

	UserInfoResponseFloorsDataBizdataMaidian.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataNoticeinfo {
	List<UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist> messageList;
	String icon;
	String label;

	UserInfoResponseFloorsDataBizdataNoticeinfo({this.messageList, this.icon, this.label});

	UserInfoResponseFloorsDataBizdataNoticeinfo.fromJson(Map<String, dynamic> json) {
		if (json['messageList'] != null) {
			messageList = new List<UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist>();(json['messageList'] as List).forEach((v) { messageList.add(new UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist.fromJson(v)); });
		}
		icon = json['icon'];
		label = json['label'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.messageList != null) {
      data['messageList'] =  this.messageList.map((v) => v.toJson()).toList();
    }
		data['icon'] = this.icon;
		data['label'] = this.label;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist {
	UserInfoResponseFloorsDataBizdataNoticeinfoMessagelistMaidian maiDian;
	String style;
	String linkType;
	String id;
	List<String> text;
	String url;

	UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist({this.maiDian, this.style, this.linkType, this.id, this.text, this.url});

	UserInfoResponseFloorsDataBizdataNoticeinfoMessagelist.fromJson(Map<String, dynamic> json) {
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataBizdataNoticeinfoMessagelistMaidian.fromJson(json['maiDian']) : null;
		style = json['style'];
		linkType = json['linkType'];
		id = json['id'];
		text = json['text']?.cast<String>();
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		data['style'] = this.style;
		data['linkType'] = this.linkType;
		data['id'] = this.id;
		data['text'] = this.text;
		data['url'] = this.url;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataNoticeinfoMessagelistMaidian {
	String eventId;
	String eventParam;

	UserInfoResponseFloorsDataBizdataNoticeinfoMessagelistMaidian({this.eventId, this.eventParam});

	UserInfoResponseFloorsDataBizdataNoticeinfoMessagelistMaidian.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataPlusinfo {
	String statusLabel;
	String statusCode;

	UserInfoResponseFloorsDataBizdataPlusinfo({this.statusLabel, this.statusCode});

	UserInfoResponseFloorsDataBizdataPlusinfo.fromJson(Map<String, dynamic> json) {
		statusLabel = json['statusLabel'];
		statusCode = json['statusCode'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusLabel'] = this.statusLabel;
		data['statusCode'] = this.statusCode;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfo {
	UserInfoResponseFloorsDataBizdataContentinfoLeft left;
	UserInfoResponseFloorsDataBizdataContentinfoBottom bottom;
	UserInfoResponseFloorsDataBizdataContentinfoRight right;

	UserInfoResponseFloorsDataBizdataContentinfo({this.left, this.bottom, this.right});

	UserInfoResponseFloorsDataBizdataContentinfo.fromJson(Map<String, dynamic> json) {
		left = json['left'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoLeft.fromJson(json['left']) : null;
		bottom = json['bottom'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoBottom.fromJson(json['bottom']) : null;
		right = json['right'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoRight.fromJson(json['right']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.left != null) {
      data['left'] = this.left.toJson();
    }
		if (this.bottom != null) {
      data['bottom'] = this.bottom.toJson();
    }
		if (this.right != null) {
      data['right'] = this.right.toJson();
    }
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoLeft {
	UserInfoResponseFloorsDataBizdataContentinfoLeftMaidian maiDian;
	String linkType;
	String style;
	UserInfoResponseFloorsDataBizdataContentinfoLeftText text;
	String contentType;
	String url;

	UserInfoResponseFloorsDataBizdataContentinfoLeft({this.maiDian, this.linkType, this.style, this.text, this.contentType, this.url});

	UserInfoResponseFloorsDataBizdataContentinfoLeft.fromJson(Map<String, dynamic> json) {
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoLeftMaidian.fromJson(json['maiDian']) : null;
		linkType = json['linkType'];
		style = json['style'];
		text = json['text'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoLeftText.fromJson(json['text']) : null;
		contentType = json['contentType'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		data['linkType'] = this.linkType;
		data['style'] = this.style;
		if (this.text != null) {
      data['text'] = this.text.toJson();
    }
		data['contentType'] = this.contentType;
		data['url'] = this.url;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoLeftMaidian {
	String eventId;
	String eventParam;

	UserInfoResponseFloorsDataBizdataContentinfoLeftMaidian({this.eventId, this.eventParam});

	UserInfoResponseFloorsDataBizdataContentinfoLeftMaidian.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoLeftText {
	String first;
	List<String> second;

	UserInfoResponseFloorsDataBizdataContentinfoLeftText({this.first, this.second});

	UserInfoResponseFloorsDataBizdataContentinfoLeftText.fromJson(Map<String, dynamic> json) {
		first = json['first'];
		second = json['second']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['first'] = this.first;
		data['second'] = this.second;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoBottom {
	UserInfoResponseFloorsDataBizdataContentinfoBottomMaidian maiDian;
	String linkType;
	String style;
	UserInfoResponseFloorsDataBizdataContentinfoBottomText text;
	String contentType;
	String url;

	UserInfoResponseFloorsDataBizdataContentinfoBottom({this.maiDian, this.linkType, this.style, this.text, this.contentType, this.url});

	UserInfoResponseFloorsDataBizdataContentinfoBottom.fromJson(Map<String, dynamic> json) {
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoBottomMaidian.fromJson(json['maiDian']) : null;
		linkType = json['linkType'];
		style = json['style'];
		text = json['text'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoBottomText.fromJson(json['text']) : null;
		contentType = json['contentType'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		data['linkType'] = this.linkType;
		data['style'] = this.style;
		if (this.text != null) {
      data['text'] = this.text.toJson();
    }
		data['contentType'] = this.contentType;
		data['url'] = this.url;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoBottomMaidian {
	String eventId;
	String eventParam;

	UserInfoResponseFloorsDataBizdataContentinfoBottomMaidian({this.eventId, this.eventParam});

	UserInfoResponseFloorsDataBizdataContentinfoBottomMaidian.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoBottomText {
	String first;

	UserInfoResponseFloorsDataBizdataContentinfoBottomText({this.first});

	UserInfoResponseFloorsDataBizdataContentinfoBottomText.fromJson(Map<String, dynamic> json) {
		first = json['first'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['first'] = this.first;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoRight {
	UserInfoResponseFloorsDataBizdataContentinfoRightMaidian maiDian;
	String linkType;
	String style;
	UserInfoResponseFloorsDataBizdataContentinfoRightText text;
	String contentType;
	String url;

	UserInfoResponseFloorsDataBizdataContentinfoRight({this.maiDian, this.linkType, this.style, this.text, this.contentType, this.url});

	UserInfoResponseFloorsDataBizdataContentinfoRight.fromJson(Map<String, dynamic> json) {
		maiDian = json['maiDian'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoRightMaidian.fromJson(json['maiDian']) : null;
		linkType = json['linkType'];
		style = json['style'];
		text = json['text'] != null ? new UserInfoResponseFloorsDataBizdataContentinfoRightText.fromJson(json['text']) : null;
		contentType = json['contentType'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
		data['linkType'] = this.linkType;
		data['style'] = this.style;
		if (this.text != null) {
      data['text'] = this.text.toJson();
    }
		data['contentType'] = this.contentType;
		data['url'] = this.url;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoRightMaidian {
	String eventId;
	String eventParam;

	UserInfoResponseFloorsDataBizdataContentinfoRightMaidian({this.eventId, this.eventParam});

	UserInfoResponseFloorsDataBizdataContentinfoRightMaidian.fromJson(Map<String, dynamic> json) {
		eventId = json['eventId'];
		eventParam = json['eventParam'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eventId'] = this.eventId;
		data['eventParam'] = this.eventParam;
		return data;
	}
}

class UserInfoResponseFloorsDataBizdataContentinfoRightText {
	String first;
	List<String> second;

	UserInfoResponseFloorsDataBizdataContentinfoRightText({this.first, this.second});

	UserInfoResponseFloorsDataBizdataContentinfoRightText.fromJson(Map<String, dynamic> json) {
		first = json['first'];
		second = json['second']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['first'] = this.first;
		data['second'] = this.second;
		return data;
	}
}

class UserInfoResponseFloorsDataInfolist {
	String oneCategory;
	int modeType;
	UserInfoResponseFloorsDataInfolistBiz biz;
	UserInfoResponseFloorsDataInfolistData data;
	UserInfoResponseFloorsDataInfolistExtra extra;
	String detailUrl;
	String info;

	UserInfoResponseFloorsDataInfolist({this.oneCategory, this.modeType, this.biz, this.data, this.extra, this.detailUrl, this.info});

	UserInfoResponseFloorsDataInfolist.fromJson(Map<String, dynamic> json) {
		oneCategory = json['oneCategory'];
		modeType = json['modeType'];
		biz = json['biz'] != null ? new UserInfoResponseFloorsDataInfolistBiz.fromJson(json['biz']) : null;
		data = json['data'] != null ? new UserInfoResponseFloorsDataInfolistData.fromJson(json['data']) : null;
		extra = json['extra'] != null ? new UserInfoResponseFloorsDataInfolistExtra.fromJson(json['extra']) : null;
		detailUrl = json['detailUrl'];
		info = json['info'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['oneCategory'] = this.oneCategory;
		data['modeType'] = this.modeType;
		if (this.biz != null) {
      data['biz'] = this.biz.toJson();
    }
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
		data['detailUrl'] = this.detailUrl;
		data['info'] = this.info;
		return data;
	}
}

class UserInfoResponseFloorsDataInfolistBiz {
	String bizImgUrl;
	String text;

	UserInfoResponseFloorsDataInfolistBiz({this.bizImgUrl, this.text});

	UserInfoResponseFloorsDataInfolistBiz.fromJson(Map<String, dynamic> json) {
		bizImgUrl = json['bizImgUrl'];
		text = json['text'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bizImgUrl'] = this.bizImgUrl;
		data['text'] = this.text;
		return data;
	}
}

class UserInfoResponseFloorsDataInfolistData {
	List<String> downData;
	List<String> upData;

	UserInfoResponseFloorsDataInfolistData({this.downData, this.upData});

	UserInfoResponseFloorsDataInfolistData.fromJson(Map<String, dynamic> json) {
		downData = json['downData']?.cast<String>();
		upData = json['upData']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['downData'] = this.downData;
		data['upData'] = this.upData;
		return data;
	}
}

class UserInfoResponseFloorsDataInfolistExtra {
	int type;
	String content;

	UserInfoResponseFloorsDataInfolistExtra({this.type, this.content});

	UserInfoResponseFloorsDataInfolistExtra.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		content = json['content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['type'] = this.type;
		data['content'] = this.content;
		return data;
	}
}

class UserInfoResponseFloorsDataClosereminder {
	String cardSubTitle;
	String tempCardTitle;
	String cardTitle;

	UserInfoResponseFloorsDataClosereminder({this.cardSubTitle, this.tempCardTitle, this.cardTitle});

	UserInfoResponseFloorsDataClosereminder.fromJson(Map<String, dynamic> json) {
		cardSubTitle = json['cardSubTitle'];
		tempCardTitle = json['tempCardTitle'];
		cardTitle = json['cardTitle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cardSubTitle'] = this.cardSubTitle;
		data['tempCardTitle'] = this.tempCardTitle;
		data['cardTitle'] = this.cardTitle;
		return data;
	}
}

class UserInfoResponseFloorsDataExtrainfo {
	String mid;
	String bid;

	UserInfoResponseFloorsDataExtrainfo({this.mid, this.bid});

	UserInfoResponseFloorsDataExtrainfo.fromJson(Map<String, dynamic> json) {
		mid = json['mid'];
		bid = json['bid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['mid'] = this.mid;
		data['bid'] = this.bid;
		return data;
	}
}

class UserInfoResponseOthers {


	UserInfoResponseOthers();

	UserInfoResponseOthers.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}
