class ItemInfoResponseEntity {
	int code;
	List<ItemInfoResponseFloor> floors;
	ItemInfoResponseOthers others;

	ItemInfoResponseEntity({this.code, this.floors, this.others});

	ItemInfoResponseEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['floors'] != null) {
			floors = new List<ItemInfoResponseFloor>();(json['floors'] as List).forEach((v) { floors.add(new ItemInfoResponseFloor.fromJson(v)); });
		}
		others = json['others'] != null ? new ItemInfoResponseOthers.fromJson(json['others']) : null;
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

class ItemInfoResponseFloor {
	ItemInfoResponseFloorsCf cf;
	ItemInfoResponseFloorsData data;
	int sortId;
	String mId;
	String refId;
	String bId;

	ItemInfoResponseFloor({this.cf, this.data, this.sortId, this.mId, this.refId, this.bId});

	ItemInfoResponseFloor.fromJson(Map<String, dynamic> json) {
		cf = json['cf'] != null ? new ItemInfoResponseFloorsCf.fromJson(json['cf']) : null;
		data = json['data'] != null ? new ItemInfoResponseFloorsData.fromJson(json['data']) : null;
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

class ItemInfoResponseFloorsCf {
	String spl;
	String bgc;

	ItemInfoResponseFloorsCf({this.spl, this.bgc});

	ItemInfoResponseFloorsCf.fromJson(Map<String, dynamic> json) {
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

class ItemInfoResponseFloorsData {
	String fare;
	ItemInfoResponseFloorsDataColorsizeinfo colorSizeInfo;
	String specBuryPoint;
	bool isOpenCar;
	String text2C;
	String buried;
	ItemInfoResponseFloorsDataServiceinfo serviceInfo;
	bool showAttention;
	ItemInfoResponseFloorsDataPromotionpoint promotionPoint;
	ItemInfoResponseFloorsDataSelectinfo selectInfo;
	ItemInfoResponseFloorsDataDefineskinchange defineSkinChange;
	bool supportSale;
	ItemInfoResponseFloorsDataVideocontrol videoControl;
	ItemInfoResponseFloorsDataJdserplusinfo jdSerPlusInfo;
	bool abTest800;
	int text1S;
	ItemInfoResponseFloorsDataYuyueinfo yuyueInfo;
	bool isOpenNode;
	String rankName;
	ItemInfoResponseFloorsDataProperty property;
	String stock;
	String selected;
	String priceLabel;
	ItemInfoResponseFloorsDataMiaoshainfo miaoshaInfo;
	ItemInfoResponseFloorsDataYanbaoinfo yanBaoInfo;
	ItemInfoResponseFloorsDataAbtestinfo abTestInfo;
	String eventId;
	ItemInfoResponseFloorsDataShopinfo shopInfo;
	ItemInfoResponseFloorsDataAd ad;
	ItemInfoResponseFloorsDataPriceicon priceIcon;
	String text1C;
	String text3Bgc;
	bool text1B;
	ItemInfoResponseFloorsDataFlashinfo flashInfo;
	bool isDesCbc;
	List<ItemInfoResponseFloorsDataServiconrelation> servIconRelation;
	List<ItemInfoResponseFloorsDataImginfo> imgInfo;
	ItemInfoResponseFloorsDataPreferentialguide preferentialGuide;
	bool isOpen;
	String text3;
	ItemInfoResponseFloorsDataSlide slide;
	String text1;
	String text2;
	ItemInfoResponseFloorsDataDefaultaddr defaultAddr;
	ItemInfoResponseFloorsDataSuit suit;
	ItemInfoResponseFloorsDataActions actions;
	ItemInfoResponseFloorsDataRecommendtoast recommendToast;
	int tailIconH;
	String bgc;
	bool threeDSwitch;
	int jumpType;
	ItemInfoResponseFloorsDataEventparam eventParam;
	int rankType;
	List<ItemInfoResponseFloorsDataCcckernel> cccKernel;
	ItemInfoResponseFloorsDataUnitedrank unitedRank;
	String recommend;
	String title;
	String jumpUrl;
	ItemInfoResponseFloorsDataPriceinfo priceInfo;
	int text3S;
	ItemInfoResponseFloorsDataAttentioninfo attentionInfo;
	bool showAttentionPriceFloor;
	ItemInfoResponseFloorsDataWeightinfo weightInfo;
	ItemInfoResponseFloorsDataButtoninfo buttonInfo;
	bool viewMore;
	bool isShowAR;
	String text3C;
	ItemInfoResponseFloorsDataPointinfo pointInfo;
	bool isIcon;
	List<ItemInfoResponseFloorsDataWareimage> wareImage;
	ItemInfoResponseFloorsDataWareinfo wareInfo;
	ItemInfoResponseFloorsDataPromotioninfo promotionInfo;
	String tabUrl;
	String tailIcon;
	bool isOpenH5;
	int text2S;
	ItemInfoResponseFloorsDataTrustworthy trustworthy;
	List<ItemInfoResponseFloorsDataBizlist> bizList;
	bool appointAndPresaleOpen;
	ItemInfoResponseFloorsDataShareimginfo shareImgInfo;

	ItemInfoResponseFloorsData({this.fare, this.colorSizeInfo, this.specBuryPoint, this.isOpenCar, this.text2C, this.buried, this.serviceInfo, this.showAttention, this.promotionPoint, this.selectInfo, this.defineSkinChange, this.supportSale, this.videoControl, this.jdSerPlusInfo, this.abTest800, this.text1S, this.yuyueInfo, this.isOpenNode, this.rankName, this.property, this.stock, this.selected, this.priceLabel, this.miaoshaInfo, this.yanBaoInfo, this.abTestInfo, this.eventId, this.shopInfo, this.ad, this.priceIcon, this.text1C, this.text3Bgc, this.text1B, this.flashInfo, this.isDesCbc, this.servIconRelation, this.imgInfo, this.preferentialGuide, this.isOpen, this.text3, this.slide, this.text1, this.text2, this.defaultAddr, this.suit, this.actions, this.recommendToast, this.tailIconH, this.bgc, this.threeDSwitch, this.jumpType, this.eventParam, this.rankType, this.cccKernel, this.unitedRank, this.recommend, this.title, this.jumpUrl, this.priceInfo, this.text3S, this.attentionInfo, this.showAttentionPriceFloor, this.weightInfo, this.buttonInfo, this.viewMore, this.isShowAR, this.text3C, this.pointInfo, this.isIcon, this.wareImage, this.wareInfo, this.promotionInfo, this.tabUrl, this.tailIcon, this.isOpenH5, this.text2S, this.trustworthy, this.bizList, this.appointAndPresaleOpen, this.shareImgInfo});

	ItemInfoResponseFloorsData.fromJson(Map<String, dynamic> json) {
		fare = json['fare'];
		colorSizeInfo = json['colorSizeInfo'] != null ? new ItemInfoResponseFloorsDataColorsizeinfo.fromJson(json['colorSizeInfo']) : null;
		specBuryPoint = json['specBuryPoint'];
		isOpenCar = json['isOpenCar'];
		text2C = json['text2C'];
		buried = json['buried'];
		serviceInfo = json['serviceInfo'] != null ? new ItemInfoResponseFloorsDataServiceinfo.fromJson(json['serviceInfo']) : null;
		showAttention = json['showAttention'];
		promotionPoint = json['promotionPoint'] != null ? new ItemInfoResponseFloorsDataPromotionpoint.fromJson(json['promotionPoint']) : null;
		selectInfo = json['selectInfo'] != null ? new ItemInfoResponseFloorsDataSelectinfo.fromJson(json['selectInfo']) : null;
		defineSkinChange = json['defineSkinChange'] != null ? new ItemInfoResponseFloorsDataDefineskinchange.fromJson(json['defineSkinChange']) : null;
		supportSale = json['supportSale'];
		videoControl = json['videoControl'] != null ? new ItemInfoResponseFloorsDataVideocontrol.fromJson(json['videoControl']) : null;
		jdSerPlusInfo = json['jdSerPlusInfo'] != null ? new ItemInfoResponseFloorsDataJdserplusinfo.fromJson(json['jdSerPlusInfo']) : null;
		abTest800 = json['abTest800'];
		text1S = json['text1S'];
		yuyueInfo = json['yuyueInfo'] != null ? new ItemInfoResponseFloorsDataYuyueinfo.fromJson(json['yuyueInfo']) : null;
		isOpenNode = json['isOpenNode'];
		rankName = json['rankName'];
		property = json['property'] != null ? new ItemInfoResponseFloorsDataProperty.fromJson(json['property']) : null;
		stock = json['stock'];
		selected = json['selected'];
		priceLabel = json['priceLabel'];
		miaoshaInfo = json['miaoshaInfo'] != null ? new ItemInfoResponseFloorsDataMiaoshainfo.fromJson(json['miaoshaInfo']) : null;
		yanBaoInfo = json['yanBaoInfo'] != null ? new ItemInfoResponseFloorsDataYanbaoinfo.fromJson(json['yanBaoInfo']) : null;
		abTestInfo = json['abTestInfo'] != null ? new ItemInfoResponseFloorsDataAbtestinfo.fromJson(json['abTestInfo']) : null;
		eventId = json['eventId'];
		shopInfo = json['shopInfo'] != null ? new ItemInfoResponseFloorsDataShopinfo.fromJson(json['shopInfo']) : null;
		ad = json['ad'] != null ? new ItemInfoResponseFloorsDataAd.fromJson(json['ad']) : null;
		priceIcon = json['priceIcon'] != null ? new ItemInfoResponseFloorsDataPriceicon.fromJson(json['priceIcon']) : null;
		text1C = json['text1C'];
		text3Bgc = json['text3Bgc'];
		text1B = json['text1B'];
		flashInfo = json['flashInfo'] != null ? new ItemInfoResponseFloorsDataFlashinfo.fromJson(json['flashInfo']) : null;
		isDesCbc = json['isDesCbc'];
		if (json['servIconRelation'] != null) {
			servIconRelation = new List<ItemInfoResponseFloorsDataServiconrelation>();(json['servIconRelation'] as List).forEach((v) { servIconRelation.add(new ItemInfoResponseFloorsDataServiconrelation.fromJson(v)); });
		}
		if (json['imgInfo'] != null) {
			imgInfo = new List<ItemInfoResponseFloorsDataImginfo>();(json['imgInfo'] as List).forEach((v) { imgInfo.add(new ItemInfoResponseFloorsDataImginfo.fromJson(v)); });
		}
		preferentialGuide = json['preferentialGuide'] != null ? new ItemInfoResponseFloorsDataPreferentialguide.fromJson(json['preferentialGuide']) : null;
		isOpen = json['isOpen'];
		text3 = json['text3'];
		slide = json['slide'] != null ? new ItemInfoResponseFloorsDataSlide.fromJson(json['slide']) : null;
		text1 = json['text1'];
		text2 = json['text2'];
		defaultAddr = json['defaultAddr'] != null ? new ItemInfoResponseFloorsDataDefaultaddr.fromJson(json['defaultAddr']) : null;
		suit = json['suit'] != null ? new ItemInfoResponseFloorsDataSuit.fromJson(json['suit']) : null;
		actions = json['actions'] != null ? new ItemInfoResponseFloorsDataActions.fromJson(json['actions']) : null;
		recommendToast = json['recommendToast'] != null ? new ItemInfoResponseFloorsDataRecommendtoast.fromJson(json['recommendToast']) : null;
		tailIconH = json['tailIconH'];
		bgc = json['bgc'];
		threeDSwitch = json['threeDSwitch'];
		jumpType = json['jumpType'];
		eventParam = json['eventParam'] != null ? new ItemInfoResponseFloorsDataEventparam.fromJson(json['eventParam']) : null;
		rankType = json['rankType'];
		if (json['CccKernel'] != null) {
			cccKernel = new List<ItemInfoResponseFloorsDataCcckernel>();(json['CccKernel'] as List).forEach((v) { cccKernel.add(new ItemInfoResponseFloorsDataCcckernel.fromJson(v)); });
		}
		unitedRank = json['unitedRank'] != null ? new ItemInfoResponseFloorsDataUnitedrank.fromJson(json['unitedRank']) : null;
		recommend = json['recommend'];
		title = json['title'];
		jumpUrl = json['jumpUrl'];
		priceInfo = json['priceInfo'] != null ? new ItemInfoResponseFloorsDataPriceinfo.fromJson(json['priceInfo']) : null;
		text3S = json['text3S'];
		attentionInfo = json['attentionInfo'] != null ? new ItemInfoResponseFloorsDataAttentioninfo.fromJson(json['attentionInfo']) : null;
		showAttentionPriceFloor = json['showAttentionPriceFloor'];
		weightInfo = json['weightInfo'] != null ? new ItemInfoResponseFloorsDataWeightinfo.fromJson(json['weightInfo']) : null;
		buttonInfo = json['buttonInfo'] != null ? new ItemInfoResponseFloorsDataButtoninfo.fromJson(json['buttonInfo']) : null;
		viewMore = json['viewMore'];
		isShowAR = json['isShowAR'];
		text3C = json['text3C'];
		pointInfo = json['pointInfo'] != null ? new ItemInfoResponseFloorsDataPointinfo.fromJson(json['pointInfo']) : null;
		isIcon = json['isIcon'];
		if (json['wareImage'] != null) {
			wareImage = new List<ItemInfoResponseFloorsDataWareimage>();(json['wareImage'] as List).forEach((v) { wareImage.add(new ItemInfoResponseFloorsDataWareimage.fromJson(v)); });
		}
		wareInfo = json['wareInfo'] != null ? new ItemInfoResponseFloorsDataWareinfo.fromJson(json['wareInfo']) : null;
		promotionInfo = json['promotionInfo'] != null ? new ItemInfoResponseFloorsDataPromotioninfo.fromJson(json['promotionInfo']) : null;
		tabUrl = json['tabUrl'];
		tailIcon = json['tailIcon'];
		isOpenH5 = json['isOpenH5'];
		text2S = json['text2S'];
		trustworthy = json['trustworthy'] != null ? new ItemInfoResponseFloorsDataTrustworthy.fromJson(json['trustworthy']) : null;
		if (json['bizList'] != null) {
			bizList = new List<ItemInfoResponseFloorsDataBizlist>();(json['bizList'] as List).forEach((v) { bizList.add(new ItemInfoResponseFloorsDataBizlist.fromJson(v)); });
		}
		appointAndPresaleOpen = json['appointAndPresaleOpen'];
		shareImgInfo = json['shareImgInfo'] != null ? new ItemInfoResponseFloorsDataShareimginfo.fromJson(json['shareImgInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['fare'] = this.fare;
		if (this.colorSizeInfo != null) {
      data['colorSizeInfo'] = this.colorSizeInfo.toJson();
    }
		data['specBuryPoint'] = this.specBuryPoint;
		data['isOpenCar'] = this.isOpenCar;
		data['text2C'] = this.text2C;
		data['buried'] = this.buried;
		if (this.serviceInfo != null) {
      data['serviceInfo'] = this.serviceInfo.toJson();
    }
		data['showAttention'] = this.showAttention;
		if (this.promotionPoint != null) {
      data['promotionPoint'] = this.promotionPoint.toJson();
    }
		if (this.selectInfo != null) {
      data['selectInfo'] = this.selectInfo.toJson();
    }
		if (this.defineSkinChange != null) {
      data['defineSkinChange'] = this.defineSkinChange.toJson();
    }
		data['supportSale'] = this.supportSale;
		if (this.videoControl != null) {
      data['videoControl'] = this.videoControl.toJson();
    }
		if (this.jdSerPlusInfo != null) {
      data['jdSerPlusInfo'] = this.jdSerPlusInfo.toJson();
    }
		data['abTest800'] = this.abTest800;
		data['text1S'] = this.text1S;
		if (this.yuyueInfo != null) {
      data['yuyueInfo'] = this.yuyueInfo.toJson();
    }
		data['isOpenNode'] = this.isOpenNode;
		data['rankName'] = this.rankName;
		if (this.property != null) {
      data['property'] = this.property.toJson();
    }
		data['stock'] = this.stock;
		data['selected'] = this.selected;
		data['priceLabel'] = this.priceLabel;
		if (this.miaoshaInfo != null) {
      data['miaoshaInfo'] = this.miaoshaInfo.toJson();
    }
		if (this.yanBaoInfo != null) {
      data['yanBaoInfo'] = this.yanBaoInfo.toJson();
    }
		if (this.abTestInfo != null) {
      data['abTestInfo'] = this.abTestInfo.toJson();
    }
		data['eventId'] = this.eventId;
		if (this.shopInfo != null) {
      data['shopInfo'] = this.shopInfo.toJson();
    }
		if (this.ad != null) {
      data['ad'] = this.ad.toJson();
    }
		if (this.priceIcon != null) {
      data['priceIcon'] = this.priceIcon.toJson();
    }
		data['text1C'] = this.text1C;
		data['text3Bgc'] = this.text3Bgc;
		data['text1B'] = this.text1B;
		if (this.flashInfo != null) {
      data['flashInfo'] = this.flashInfo.toJson();
    }
		data['isDesCbc'] = this.isDesCbc;
		if (this.servIconRelation != null) {
      data['servIconRelation'] =  this.servIconRelation.map((v) => v.toJson()).toList();
    }
		if (this.imgInfo != null) {
      data['imgInfo'] =  this.imgInfo.map((v) => v.toJson()).toList();
    }
		if (this.preferentialGuide != null) {
      data['preferentialGuide'] = this.preferentialGuide.toJson();
    }
		data['isOpen'] = this.isOpen;
		data['text3'] = this.text3;
		if (this.slide != null) {
      data['slide'] = this.slide.toJson();
    }
		data['text1'] = this.text1;
		data['text2'] = this.text2;
		if (this.defaultAddr != null) {
      data['defaultAddr'] = this.defaultAddr.toJson();
    }
		if (this.suit != null) {
      data['suit'] = this.suit.toJson();
    }
		if (this.actions != null) {
      data['actions'] = this.actions.toJson();
    }
		if (this.recommendToast != null) {
      data['recommendToast'] = this.recommendToast.toJson();
    }
		data['tailIconH'] = this.tailIconH;
		data['bgc'] = this.bgc;
		data['threeDSwitch'] = this.threeDSwitch;
		data['jumpType'] = this.jumpType;
		if (this.eventParam != null) {
      data['eventParam'] = this.eventParam.toJson();
    }
		data['rankType'] = this.rankType;
		if (this.cccKernel != null) {
      data['CccKernel'] =  this.cccKernel.map((v) => v.toJson()).toList();
    }
		if (this.unitedRank != null) {
      data['unitedRank'] = this.unitedRank.toJson();
    }
		data['recommend'] = this.recommend;
		data['title'] = this.title;
		data['jumpUrl'] = this.jumpUrl;
		if (this.priceInfo != null) {
      data['priceInfo'] = this.priceInfo.toJson();
    }
		data['text3S'] = this.text3S;
		if (this.attentionInfo != null) {
      data['attentionInfo'] = this.attentionInfo.toJson();
    }
		data['showAttentionPriceFloor'] = this.showAttentionPriceFloor;
		if (this.weightInfo != null) {
      data['weightInfo'] = this.weightInfo.toJson();
    }
		if (this.buttonInfo != null) {
      data['buttonInfo'] = this.buttonInfo.toJson();
    }
		data['viewMore'] = this.viewMore;
		data['isShowAR'] = this.isShowAR;
		data['text3C'] = this.text3C;
		if (this.pointInfo != null) {
      data['pointInfo'] = this.pointInfo.toJson();
    }
		data['isIcon'] = this.isIcon;
		if (this.wareImage != null) {
      data['wareImage'] =  this.wareImage.map((v) => v.toJson()).toList();
    }
		if (this.wareInfo != null) {
      data['wareInfo'] = this.wareInfo.toJson();
    }
		if (this.promotionInfo != null) {
      data['promotionInfo'] = this.promotionInfo.toJson();
    }
		data['tabUrl'] = this.tabUrl;
		data['tailIcon'] = this.tailIcon;
		data['isOpenH5'] = this.isOpenH5;
		data['text2S'] = this.text2S;
		if (this.trustworthy != null) {
      data['trustworthy'] = this.trustworthy.toJson();
    }
		if (this.bizList != null) {
      data['bizList'] =  this.bizList.map((v) => v.toJson()).toList();
    }
		data['appointAndPresaleOpen'] = this.appointAndPresaleOpen;
		if (this.shareImgInfo != null) {
      data['shareImgInfo'] = this.shareImgInfo.toJson();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataColorsizeinfo {
	List<ItemInfoResponseFloorsDataColorsizeinfoColorsize> colorSize;
	String colorSizeTips;

	ItemInfoResponseFloorsDataColorsizeinfo({this.colorSize, this.colorSizeTips});

	ItemInfoResponseFloorsDataColorsizeinfo.fromJson(Map<String, dynamic> json) {
		if (json['colorSize'] != null) {
			colorSize = new List<ItemInfoResponseFloorsDataColorsizeinfoColorsize>();(json['colorSize'] as List).forEach((v) { colorSize.add(new ItemInfoResponseFloorsDataColorsizeinfoColorsize.fromJson(v)); });
		}
		colorSizeTips = json['colorSizeTips'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.colorSize != null) {
      data['colorSize'] =  this.colorSize.map((v) => v.toJson()).toList();
    }
		data['colorSizeTips'] = this.colorSizeTips;
		return data;
	}
}

class ItemInfoResponseFloorsDataColorsizeinfoColorsize {
	List<ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton> buttons;
	String title;

	ItemInfoResponseFloorsDataColorsizeinfoColorsize({this.buttons, this.title});

	ItemInfoResponseFloorsDataColorsizeinfoColorsize.fromJson(Map<String, dynamic> json) {
		if (json['buttons'] != null) {
			buttons = new List<ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton>();(json['buttons'] as List).forEach((v) { buttons.add(new ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton.fromJson(v)); });
		}
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.buttons != null) {
      data['buttons'] =  this.buttons.map((v) => v.toJson()).toList();
    }
		data['title'] = this.title;
		return data;
	}
}

class ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton {
	String no;
	List<String> skuList;
	String text;

	ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton({this.no, this.skuList, this.text});

	ItemInfoResponseFloorsDataColorsizeinfoColorsizeButton.fromJson(Map<String, dynamic> json) {
		no = json['no'];
		skuList = json['skuList']?.cast<String>();
		text = json['text'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['no'] = this.no;
		data['skuList'] = this.skuList;
		data['text'] = this.text;
		return data;
	}
}

class ItemInfoResponseFloorsDataServiceinfo {
	ItemInfoResponseFloorsDataServiceinfoBasic basic;
	String xClass;

	ItemInfoResponseFloorsDataServiceinfo({this.basic, this.xClass});

	ItemInfoResponseFloorsDataServiceinfo.fromJson(Map<String, dynamic> json) {
		basic = json['basic'] != null ? new ItemInfoResponseFloorsDataServiceinfoBasic.fromJson(json['basic']) : null;
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.basic != null) {
      data['basic'] = this.basic.toJson();
    }
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataServiceinfoBasic {
	List<ItemInfoResponseFloorsDataServiceinfoBasicIconlist> iconList;
	String title;
	String xClass;

	ItemInfoResponseFloorsDataServiceinfoBasic({this.iconList, this.title, this.xClass});

	ItemInfoResponseFloorsDataServiceinfoBasic.fromJson(Map<String, dynamic> json) {
		if (json['iconList'] != null) {
			iconList = new List<ItemInfoResponseFloorsDataServiceinfoBasicIconlist>();(json['iconList'] as List).forEach((v) { iconList.add(new ItemInfoResponseFloorsDataServiceinfoBasicIconlist.fromJson(v)); });
		}
		title = json['title'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.iconList != null) {
      data['iconList'] =  this.iconList.map((v) => v.toJson()).toList();
    }
		data['title'] = this.title;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataServiceinfoBasicIconlist {
	int sortId;
	bool jichu;
	String imageUrl;
	String iconType;
	bool xShow;
	String tip;
	String text;
	String xClass;

	ItemInfoResponseFloorsDataServiceinfoBasicIconlist({this.sortId, this.jichu, this.imageUrl, this.iconType, this.xShow, this.tip, this.text, this.xClass});

	ItemInfoResponseFloorsDataServiceinfoBasicIconlist.fromJson(Map<String, dynamic> json) {
		sortId = json['sortId'];
		jichu = json['jichu'];
		imageUrl = json['imageUrl'];
		iconType = json['iconType'];
		xShow = json['show'];
		tip = json['tip'];
		text = json['text'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sortId'] = this.sortId;
		data['jichu'] = this.jichu;
		data['imageUrl'] = this.imageUrl;
		data['iconType'] = this.iconType;
		data['show'] = this.xShow;
		data['tip'] = this.tip;
		data['text'] = this.text;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataPromotionpoint {
	String promotionTagPoint;
	String xClass;
	String promotionSkinPoint;

	ItemInfoResponseFloorsDataPromotionpoint({this.promotionTagPoint, this.xClass, this.promotionSkinPoint});

	ItemInfoResponseFloorsDataPromotionpoint.fromJson(Map<String, dynamic> json) {
		promotionTagPoint = json['promotionTagPoint'];
		xClass = json['class'];
		promotionSkinPoint = json['promotionSkinPoint'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['promotionTagPoint'] = this.promotionTagPoint;
		data['class'] = this.xClass;
		data['promotionSkinPoint'] = this.promotionSkinPoint;
		return data;
	}
}

class ItemInfoResponseFloorsDataSelectinfo {
	String gdImage;
	String imgUrl;
	String dgImage;
	String inTitle;

	ItemInfoResponseFloorsDataSelectinfo({this.gdImage, this.imgUrl, this.dgImage, this.inTitle});

	ItemInfoResponseFloorsDataSelectinfo.fromJson(Map<String, dynamic> json) {
		gdImage = json['gdImage'];
		imgUrl = json['imgUrl'];
		dgImage = json['dgImage'];
		inTitle = json['inTitle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['gdImage'] = this.gdImage;
		data['imgUrl'] = this.imgUrl;
		data['dgImage'] = this.dgImage;
		data['inTitle'] = this.inTitle;
		return data;
	}
}

class ItemInfoResponseFloorsDataDefineskinchange {
	String cdBackColor;
	String cdNumBoxColor;
	String infoBoxTextColor;
	String cdNumColor;
	String imageUrl;
	String infoBoxPell;
	String cdTextColor;
	String infoBoxColor;

	ItemInfoResponseFloorsDataDefineskinchange({this.cdBackColor, this.cdNumBoxColor, this.infoBoxTextColor, this.cdNumColor, this.imageUrl, this.infoBoxPell, this.cdTextColor, this.infoBoxColor});

	ItemInfoResponseFloorsDataDefineskinchange.fromJson(Map<String, dynamic> json) {
		cdBackColor = json['cdBackColor'];
		cdNumBoxColor = json['cdNumBoxColor'];
		infoBoxTextColor = json['infoBoxTextColor'];
		cdNumColor = json['cdNumColor'];
		imageUrl = json['imageUrl'];
		infoBoxPell = json['infoBoxPell'];
		cdTextColor = json['cdTextColor'];
		infoBoxColor = json['infoBoxColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cdBackColor'] = this.cdBackColor;
		data['cdNumBoxColor'] = this.cdNumBoxColor;
		data['infoBoxTextColor'] = this.infoBoxTextColor;
		data['cdNumColor'] = this.cdNumColor;
		data['imageUrl'] = this.imageUrl;
		data['infoBoxPell'] = this.infoBoxPell;
		data['cdTextColor'] = this.cdTextColor;
		data['infoBoxColor'] = this.infoBoxColor;
		return data;
	}
}

class ItemInfoResponseFloorsDataVideocontrol {
	bool optimize;
	bool autoPlay;
	ItemInfoResponseFloorsDataVideocontrolMastervideo masterVideo;
	String xClass;

	ItemInfoResponseFloorsDataVideocontrol({this.optimize, this.autoPlay, this.masterVideo, this.xClass});

	ItemInfoResponseFloorsDataVideocontrol.fromJson(Map<String, dynamic> json) {
		optimize = json['optimize'];
		autoPlay = json['autoPlay'];
		masterVideo = json['masterVideo'] != null ? new ItemInfoResponseFloorsDataVideocontrolMastervideo.fromJson(json['masterVideo']) : null;
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['optimize'] = this.optimize;
		data['autoPlay'] = this.autoPlay;
		if (this.masterVideo != null) {
      data['masterVideo'] = this.masterVideo.toJson();
    }
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataVideocontrolMastervideo {
	int duration;
	String videoDuration;
	ItemInfoResponseFloorsDataVideocontrolMastervideoVideoshare videoShare;
	String imageUrl;
	String videoId;
	String xClass;
	String playUrl;

	ItemInfoResponseFloorsDataVideocontrolMastervideo({this.duration, this.videoDuration, this.videoShare, this.imageUrl, this.videoId, this.xClass, this.playUrl});

	ItemInfoResponseFloorsDataVideocontrolMastervideo.fromJson(Map<String, dynamic> json) {
		duration = json['duration'];
		videoDuration = json['videoDuration'];
		videoShare = json['videoShare'] != null ? new ItemInfoResponseFloorsDataVideocontrolMastervideoVideoshare.fromJson(json['videoShare']) : null;
		imageUrl = json['imageUrl'];
		videoId = json['videoId'];
		xClass = json['class'];
		playUrl = json['playUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['duration'] = this.duration;
		data['videoDuration'] = this.videoDuration;
		if (this.videoShare != null) {
      data['videoShare'] = this.videoShare.toJson();
    }
		data['imageUrl'] = this.imageUrl;
		data['videoId'] = this.videoId;
		data['class'] = this.xClass;
		data['playUrl'] = this.playUrl;
		return data;
	}
}

class ItemInfoResponseFloorsDataVideocontrolMastervideoVideoshare {
	String des;
	String title;
	String xClass;
	String microBlog;
	String url;

	ItemInfoResponseFloorsDataVideocontrolMastervideoVideoshare({this.des, this.title, this.xClass, this.microBlog, this.url});

	ItemInfoResponseFloorsDataVideocontrolMastervideoVideoshare.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		title = json['title'];
		xClass = json['class'];
		microBlog = json['microBlog'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		data['title'] = this.title;
		data['class'] = this.xClass;
		data['microBlog'] = this.microBlog;
		data['url'] = this.url;
		return data;
	}
}

class ItemInfoResponseFloorsDataJdserplusinfo {
	String jdSerPlusUrl;
	List<ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist> jdSerPlusList;
	String jdSerPlusTitle;

	ItemInfoResponseFloorsDataJdserplusinfo({this.jdSerPlusUrl, this.jdSerPlusList, this.jdSerPlusTitle});

	ItemInfoResponseFloorsDataJdserplusinfo.fromJson(Map<String, dynamic> json) {
		jdSerPlusUrl = json['jdSerPlusUrl'];
		if (json['jdSerPlusList'] != null) {
			jdSerPlusList = new List<ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist>();(json['jdSerPlusList'] as List).forEach((v) { jdSerPlusList.add(new ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist.fromJson(v)); });
		}
		jdSerPlusTitle = json['jdSerPlusTitle'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jdSerPlusUrl'] = this.jdSerPlusUrl;
		if (this.jdSerPlusList != null) {
      data['jdSerPlusList'] =  this.jdSerPlusList.map((v) => v.toJson()).toList();
    }
		data['jdSerPlusTitle'] = this.jdSerPlusTitle;
		return data;
	}
}

class ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist {
	int scOrder;
	String xClass;
	String scIconUrl;
	int scId;
	String scName;
	List<ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct> products;

	ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist({this.scOrder, this.xClass, this.scIconUrl, this.scId, this.scName, this.products});

	ItemInfoResponseFloorsDataJdserplusinfoJdserpluslist.fromJson(Map<String, dynamic> json) {
		scOrder = json['scOrder'];
		xClass = json['class'];
		scIconUrl = json['scIconUrl'];
		scId = json['scId'];
		scName = json['scName'];
		if (json['products'] != null) {
			products = new List<ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct>();(json['products'] as List).forEach((v) { products.add(new ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['scOrder'] = this.scOrder;
		data['class'] = this.xClass;
		data['scIconUrl'] = this.scIconUrl;
		data['scId'] = this.scId;
		data['scName'] = this.scName;
		if (this.products != null) {
      data['products'] =  this.products.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct {
	String serviceSkuAdWord;
	String serviceSkuPrice;
	String serviceSkuShortName;
	int itemIndex;
	String serviceSku;
	String xClass;

	ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct({this.serviceSkuAdWord, this.serviceSkuPrice, this.serviceSkuShortName, this.itemIndex, this.serviceSku, this.xClass});

	ItemInfoResponseFloorsDataJdserplusinfoJdserpluslistProduct.fromJson(Map<String, dynamic> json) {
		serviceSkuAdWord = json['serviceSkuAdWord'];
		serviceSkuPrice = json['serviceSkuPrice'];
		serviceSkuShortName = json['serviceSkuShortName'];
		itemIndex = json['itemIndex'];
		serviceSku = json['serviceSku'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['serviceSkuAdWord'] = this.serviceSkuAdWord;
		data['serviceSkuPrice'] = this.serviceSkuPrice;
		data['serviceSkuShortName'] = this.serviceSkuShortName;
		data['itemIndex'] = this.itemIndex;
		data['serviceSku'] = this.serviceSku;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataYuyueinfo {
	bool mad;
	bool yuYue;
	int yuyueNum;
	bool isbuyTime;
	bool isYuYue;
	int plusType;
	String xClass;

	ItemInfoResponseFloorsDataYuyueinfo({this.mad, this.yuYue, this.yuyueNum, this.isbuyTime, this.isYuYue, this.plusType, this.xClass});

	ItemInfoResponseFloorsDataYuyueinfo.fromJson(Map<String, dynamic> json) {
		mad = json['mad'];
		yuYue = json['yuYue'];
		yuyueNum = json['yuyueNum'];
		isbuyTime = json['isbuyTime'];
		isYuYue = json['isYuYue'];
		plusType = json['plusType'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['mad'] = this.mad;
		data['yuYue'] = this.yuYue;
		data['yuyueNum'] = this.yuyueNum;
		data['isbuyTime'] = this.isbuyTime;
		data['isYuYue'] = this.isYuYue;
		data['plusType'] = this.plusType;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataProperty {
	bool isJzfp;
	int suitABTest;
	int buyMaxNum;
	bool easyBuy;
	bool isFxyl;
	bool isRegisterUser;
	String isFlimPrint;
	bool isShowShopNameB;
	bool showEmptyPrice;
	bool noStockOrder;
	String virtualCardUrl;
	ItemInfoResponseFloorsDataPropertyAddandsubtoast addAndSubToast;
	bool isEasyBuyPrice;
	bool isRx;
	bool isShowBarrage;
	bool opForIos;
	bool stockNotice;
	String treatyIntroUrl;
	bool isCollect;
	bool recTabEnable;
	bool isJx;
	String isOTC;
	bool cartFlag;
	String wareImageTest;
	String treatyIntroText;
	bool isPop;
	bool isOP;
	String chatUrl;
	bool androidImageSwitch;
	String shareUrl;
	bool evaluateTabEnable;
	String category;
	bool isEncrypt;
	bool isRegularPrice;

	ItemInfoResponseFloorsDataProperty({this.isJzfp, this.suitABTest, this.buyMaxNum, this.easyBuy, this.isFxyl, this.isRegisterUser, this.isFlimPrint, this.isShowShopNameB, this.showEmptyPrice, this.noStockOrder, this.virtualCardUrl, this.addAndSubToast, this.isEasyBuyPrice, this.isRx, this.isShowBarrage, this.opForIos, this.stockNotice, this.treatyIntroUrl, this.isCollect, this.recTabEnable, this.isJx, this.isOTC, this.cartFlag, this.wareImageTest, this.treatyIntroText, this.isPop, this.isOP, this.chatUrl, this.androidImageSwitch, this.shareUrl, this.evaluateTabEnable, this.category, this.isEncrypt, this.isRegularPrice});

	ItemInfoResponseFloorsDataProperty.fromJson(Map<String, dynamic> json) {
		isJzfp = json['isJzfp'];
		suitABTest = json['suitABTest'];
		buyMaxNum = json['buyMaxNum'];
		easyBuy = json['easyBuy'];
		isFxyl = json['isFxyl'];
		isRegisterUser = json['isRegisterUser'];
		isFlimPrint = json['isFlimPrint'];
		isShowShopNameB = json['isShowShopNameB'];
		showEmptyPrice = json['showEmptyPrice'];
		noStockOrder = json['noStockOrder'];
		virtualCardUrl = json['virtualCardUrl'];
		addAndSubToast = json['addAndSubToast'] != null ? new ItemInfoResponseFloorsDataPropertyAddandsubtoast.fromJson(json['addAndSubToast']) : null;
		isEasyBuyPrice = json['isEasyBuyPrice'];
		isRx = json['isRx'];
		isShowBarrage = json['isShowBarrage'];
		opForIos = json['opForIos'];
		stockNotice = json['stockNotice'];
		treatyIntroUrl = json['treatyIntroUrl'];
		isCollect = json['isCollect'];
		recTabEnable = json['recTabEnable'];
		isJx = json['isJx'];
		isOTC = json['isOTC'];
		cartFlag = json['cartFlag'];
		wareImageTest = json['wareImageTest'];
		treatyIntroText = json['treatyIntroText'];
		isPop = json['isPop'];
		isOP = json['isOP'];
		chatUrl = json['chatUrl'];
		androidImageSwitch = json['androidImageSwitch'];
		shareUrl = json['shareUrl'];
		evaluateTabEnable = json['evaluateTabEnable'];
		category = json['category'];
		isEncrypt = json['isEncrypt'];
		isRegularPrice = json['isRegularPrice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isJzfp'] = this.isJzfp;
		data['suitABTest'] = this.suitABTest;
		data['buyMaxNum'] = this.buyMaxNum;
		data['easyBuy'] = this.easyBuy;
		data['isFxyl'] = this.isFxyl;
		data['isRegisterUser'] = this.isRegisterUser;
		data['isFlimPrint'] = this.isFlimPrint;
		data['isShowShopNameB'] = this.isShowShopNameB;
		data['showEmptyPrice'] = this.showEmptyPrice;
		data['noStockOrder'] = this.noStockOrder;
		data['virtualCardUrl'] = this.virtualCardUrl;
		if (this.addAndSubToast != null) {
      data['addAndSubToast'] = this.addAndSubToast.toJson();
    }
		data['isEasyBuyPrice'] = this.isEasyBuyPrice;
		data['isRx'] = this.isRx;
		data['isShowBarrage'] = this.isShowBarrage;
		data['opForIos'] = this.opForIos;
		data['stockNotice'] = this.stockNotice;
		data['treatyIntroUrl'] = this.treatyIntroUrl;
		data['isCollect'] = this.isCollect;
		data['recTabEnable'] = this.recTabEnable;
		data['isJx'] = this.isJx;
		data['isOTC'] = this.isOTC;
		data['cartFlag'] = this.cartFlag;
		data['wareImageTest'] = this.wareImageTest;
		data['treatyIntroText'] = this.treatyIntroText;
		data['isPop'] = this.isPop;
		data['isOP'] = this.isOP;
		data['chatUrl'] = this.chatUrl;
		data['androidImageSwitch'] = this.androidImageSwitch;
		data['shareUrl'] = this.shareUrl;
		data['evaluateTabEnable'] = this.evaluateTabEnable;
		data['category'] = this.category;
		data['isEncrypt'] = this.isEncrypt;
		data['isRegularPrice'] = this.isRegularPrice;
		return data;
	}
}

class ItemInfoResponseFloorsDataPropertyAddandsubtoast {
	String lowestToastText;

	ItemInfoResponseFloorsDataPropertyAddandsubtoast({this.lowestToastText});

	ItemInfoResponseFloorsDataPropertyAddandsubtoast.fromJson(Map<String, dynamic> json) {
		lowestToastText = json['lowestToastText'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['lowestToastText'] = this.lowestToastText;
		return data;
	}
}

class ItemInfoResponseFloorsDataMiaoshainfo {
	String miaoshaRemainTime;
	String seckillType;
	String icon;
	int state;
	String title;
	String xClass;
	bool miaosha;

	ItemInfoResponseFloorsDataMiaoshainfo({this.miaoshaRemainTime, this.seckillType, this.icon, this.state, this.title, this.xClass, this.miaosha});

	ItemInfoResponseFloorsDataMiaoshainfo.fromJson(Map<String, dynamic> json) {
		miaoshaRemainTime = json['miaoshaRemainTime'];
		seckillType = json['seckillType'];
		icon = json['icon'];
		state = json['state'];
		title = json['title'];
		xClass = json['class'];
		miaosha = json['miaosha'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['miaoshaRemainTime'] = this.miaoshaRemainTime;
		data['seckillType'] = this.seckillType;
		data['icon'] = this.icon;
		data['state'] = this.state;
		data['title'] = this.title;
		data['class'] = this.xClass;
		data['miaosha'] = this.miaosha;
		return data;
	}
}

class ItemInfoResponseFloorsDataYanbaoinfo {
	String yanBaoTitle;
	String yanBaoUrl;
	String yanBaoDetailUrl;
	List<ItemInfoResponseFloorsDataYanbaoinfoYanbaolist> yanBaoList;

	ItemInfoResponseFloorsDataYanbaoinfo({this.yanBaoTitle, this.yanBaoUrl, this.yanBaoDetailUrl, this.yanBaoList});

	ItemInfoResponseFloorsDataYanbaoinfo.fromJson(Map<String, dynamic> json) {
		yanBaoTitle = json['yanBaoTitle'];
		yanBaoUrl = json['yanBaoUrl'];
		yanBaoDetailUrl = json['yanBaoDetailUrl'];
		if (json['yanBaoList'] != null) {
			yanBaoList = new List<ItemInfoResponseFloorsDataYanbaoinfoYanbaolist>();(json['yanBaoList'] as List).forEach((v) { yanBaoList.add(new ItemInfoResponseFloorsDataYanbaoinfoYanbaolist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['yanBaoTitle'] = this.yanBaoTitle;
		data['yanBaoUrl'] = this.yanBaoUrl;
		data['yanBaoDetailUrl'] = this.yanBaoDetailUrl;
		if (this.yanBaoList != null) {
      data['yanBaoList'] =  this.yanBaoList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataYanbaoinfoYanbaolist {
	String imgurl;
	String sortName;
	int productId;
	String xClass;
	List<ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct> products;

	ItemInfoResponseFloorsDataYanbaoinfoYanbaolist({this.imgurl, this.sortName, this.productId, this.xClass, this.products});

	ItemInfoResponseFloorsDataYanbaoinfoYanbaolist.fromJson(Map<String, dynamic> json) {
		imgurl = json['imgurl'];
		sortName = json['sortName'];
		productId = json['productId'];
		xClass = json['class'];
		if (json['products'] != null) {
			products = new List<ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct>();(json['products'] as List).forEach((v) { products.add(new ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgurl'] = this.imgurl;
		data['sortName'] = this.sortName;
		data['productId'] = this.productId;
		data['class'] = this.xClass;
		if (this.products != null) {
      data['products'] =  this.products.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct {
	String sortName;
	String price;
	int platformPid;
	String tip;
	String xClass;

	ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct({this.sortName, this.price, this.platformPid, this.tip, this.xClass});

	ItemInfoResponseFloorsDataYanbaoinfoYanbaolistProduct.fromJson(Map<String, dynamic> json) {
		sortName = json['sortName'];
		price = json['price'];
		platformPid = json['platformPid'];
		tip = json['tip'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sortName'] = this.sortName;
		data['price'] = this.price;
		data['platformPid'] = this.platformPid;
		data['tip'] = this.tip;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataAbtestinfo {
	bool shareShield;
	bool shopCardTypeAb;
	String shopPromotionAB;
	bool noBotmShop;
	bool evaluateAB;
	int skuSource;
	String shopABTest;
	bool recommendYhTag;
	bool rankYhTag;
	ItemInfoResponseFloorsDataAbtestinfoCollectabinfo collectABInfo;
	String attentionAB;
	String xClass;
	bool toABTest;
	bool feedBackAB;
	String shareM;
	bool specialSelectAB;
	bool easyDelAB;
	bool recommendPopup;
	bool showBuyLayer;
	bool newUser;
	String hospitalAB;
	bool newuserFreeAb;
	bool shopExtendsAb;
	int packABTest;
	bool shopIntensifyAB;

	ItemInfoResponseFloorsDataAbtestinfo({this.shareShield, this.shopCardTypeAb, this.shopPromotionAB, this.noBotmShop, this.evaluateAB, this.skuSource, this.shopABTest, this.recommendYhTag, this.rankYhTag, this.collectABInfo, this.attentionAB, this.xClass, this.toABTest, this.feedBackAB, this.shareM, this.specialSelectAB, this.easyDelAB, this.recommendPopup, this.showBuyLayer, this.newUser, this.hospitalAB, this.newuserFreeAb, this.shopExtendsAb, this.packABTest, this.shopIntensifyAB});

	ItemInfoResponseFloorsDataAbtestinfo.fromJson(Map<String, dynamic> json) {
		shareShield = json['shareShield'];
		shopCardTypeAb = json['shopCardTypeAb'];
		shopPromotionAB = json['shopPromotionAB'];
		noBotmShop = json['noBotmShop'];
		evaluateAB = json['evaluateAB'];
		skuSource = json['skuSource'];
		shopABTest = json['shopABTest'];
		recommendYhTag = json['recommendYhTag'];
		rankYhTag = json['rankYhTag'];
		collectABInfo = json['collectABInfo'] != null ? new ItemInfoResponseFloorsDataAbtestinfoCollectabinfo.fromJson(json['collectABInfo']) : null;
		attentionAB = json['attentionAB'];
		xClass = json['class'];
		toABTest = json['toABTest'];
		feedBackAB = json['feedBackAB'];
		shareM = json['shareM'];
		specialSelectAB = json['specialSelectAB'];
		easyDelAB = json['easyDelAB'];
		recommendPopup = json['recommendPopup'];
		showBuyLayer = json['showBuyLayer'];
		newUser = json['newUser'];
		hospitalAB = json['hospitalAB'];
		newuserFreeAb = json['newuserFreeAb'];
		shopExtendsAb = json['shopExtendsAb'];
		packABTest = json['packABTest'];
		shopIntensifyAB = json['shopIntensifyAB'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['shareShield'] = this.shareShield;
		data['shopCardTypeAb'] = this.shopCardTypeAb;
		data['shopPromotionAB'] = this.shopPromotionAB;
		data['noBotmShop'] = this.noBotmShop;
		data['evaluateAB'] = this.evaluateAB;
		data['skuSource'] = this.skuSource;
		data['shopABTest'] = this.shopABTest;
		data['recommendYhTag'] = this.recommendYhTag;
		data['rankYhTag'] = this.rankYhTag;
		if (this.collectABInfo != null) {
      data['collectABInfo'] = this.collectABInfo.toJson();
    }
		data['attentionAB'] = this.attentionAB;
		data['class'] = this.xClass;
		data['toABTest'] = this.toABTest;
		data['feedBackAB'] = this.feedBackAB;
		data['shareM'] = this.shareM;
		data['specialSelectAB'] = this.specialSelectAB;
		data['easyDelAB'] = this.easyDelAB;
		data['recommendPopup'] = this.recommendPopup;
		data['showBuyLayer'] = this.showBuyLayer;
		data['newUser'] = this.newUser;
		data['hospitalAB'] = this.hospitalAB;
		data['newuserFreeAb'] = this.newuserFreeAb;
		data['shopExtendsAb'] = this.shopExtendsAb;
		data['packABTest'] = this.packABTest;
		data['shopIntensifyAB'] = this.shopIntensifyAB;
		return data;
	}
}

class ItemInfoResponseFloorsDataAbtestinfoCollectabinfo {
	bool titleABTest;
	bool bottom4ABTest;
	String xClass;
	bool bottom3ABTest;

	ItemInfoResponseFloorsDataAbtestinfoCollectabinfo({this.titleABTest, this.bottom4ABTest, this.xClass, this.bottom3ABTest});

	ItemInfoResponseFloorsDataAbtestinfoCollectabinfo.fromJson(Map<String, dynamic> json) {
		titleABTest = json['titleABTest'];
		bottom4ABTest = json['bottom4ABTest'];
		xClass = json['class'];
		bottom3ABTest = json['bottom3ABTest'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['titleABTest'] = this.titleABTest;
		data['bottom4ABTest'] = this.bottom4ABTest;
		data['class'] = this.xClass;
		data['bottom3ABTest'] = this.bottom3ABTest;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfo {
	ItemInfoResponseFloorsDataShopinfoShop shop;
	ItemInfoResponseFloorsDataShopinfoCustomerservice customerService;

	ItemInfoResponseFloorsDataShopinfo({this.shop, this.customerService});

	ItemInfoResponseFloorsDataShopinfo.fromJson(Map<String, dynamic> json) {
		shop = json['shop'] != null ? new ItemInfoResponseFloorsDataShopinfoShop.fromJson(json['shop']) : null;
		customerService = json['customerService'] != null ? new ItemInfoResponseFloorsDataShopinfoCustomerservice.fromJson(json['customerService']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.shop != null) {
      data['shop'] = this.shop.toJson();
    }
		if (this.customerService != null) {
      data['customerService'] = this.customerService.toJson();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoShop {
	String shopStarTxt;
	int score;
	String afterSaleGrade;
	int serviceScore;
	String logo;
	int avgWareScore;
	int shopId;
	int avgEfficiencyScore;
	int promotionNum;
	String evaluateGrade;
	String telephone;
	int goodShop;
	String nameB;
	int globalGoodShop;
	String logisticsScore;
	List<ItemInfoResponseFloorsDataShopinfoShopHotcate> hotcates;
	String name;
	int cateGoodShop;
	String serverText;
	String scoreText;
	int efficiencyScore;
	int newNum;
	String hotcatestr;
	String venderType;
	int followCount;
	String evaluateTxt;
	String evaluateScore;
	bool isSquareLogo;
	String giftIcon;
	String followText;
	bool hasCoupon;
	int wareScore;
	String logisticsTxt;
	String skuCntText;
	String xClass;
	String brief;
	String logisticsGrade;
	String afterSaleTxt;
	String afterSaleScore;
	String shopImage;
	int cardType;
	int avgServiceScore;
	String scoreRankRateGrade;
	String skuText;
	String logisticsText;
	List<ItemInfoResponseFloorsDataShopinfoShopPromotion> promotions;
	bool diamond;
	int totalNum;
	String signboardUrl;
	String shopStateText;
	int shopActivityTotalNum;
	String squareLogo;

	ItemInfoResponseFloorsDataShopinfoShop({this.shopStarTxt, this.score, this.afterSaleGrade, this.serviceScore, this.logo, this.avgWareScore, this.shopId, this.avgEfficiencyScore, this.promotionNum, this.evaluateGrade, this.telephone, this.goodShop, this.nameB, this.globalGoodShop, this.logisticsScore, this.hotcates, this.name, this.cateGoodShop, this.serverText, this.scoreText, this.efficiencyScore, this.newNum, this.hotcatestr, this.venderType, this.followCount, this.evaluateTxt, this.evaluateScore, this.isSquareLogo, this.giftIcon, this.followText, this.hasCoupon, this.wareScore, this.logisticsTxt, this.skuCntText, this.xClass, this.brief, this.logisticsGrade, this.afterSaleTxt, this.afterSaleScore, this.shopImage, this.cardType, this.avgServiceScore, this.scoreRankRateGrade, this.skuText, this.logisticsText, this.promotions, this.diamond, this.totalNum, this.signboardUrl, this.shopStateText, this.shopActivityTotalNum, this.squareLogo});

	ItemInfoResponseFloorsDataShopinfoShop.fromJson(Map<String, dynamic> json) {
		shopStarTxt = json['shopStarTxt'];
		score = json['score'];
		afterSaleGrade = json['afterSaleGrade'];
		serviceScore = json['serviceScore'];
		logo = json['logo'];
		avgWareScore = json['avgWareScore'];
		shopId = json['shopId'];
		avgEfficiencyScore = json['avgEfficiencyScore'];
		promotionNum = json['promotionNum'];
		evaluateGrade = json['evaluateGrade'];
		telephone = json['telephone'];
		goodShop = json['goodShop'];
		nameB = json['nameB'];
		globalGoodShop = json['globalGoodShop'];
		logisticsScore = json['logisticsScore'];
		if (json['hotcates'] != null) {
			hotcates = new List<ItemInfoResponseFloorsDataShopinfoShopHotcate>();(json['hotcates'] as List).forEach((v) { hotcates.add(new ItemInfoResponseFloorsDataShopinfoShopHotcate.fromJson(v)); });
		}
		name = json['name'];
		cateGoodShop = json['cateGoodShop'];
		serverText = json['serverText'];
		scoreText = json['scoreText'];
		efficiencyScore = json['efficiencyScore'];
		newNum = json['newNum'];
		hotcatestr = json['hotcatestr'];
		venderType = json['venderType'];
		followCount = json['followCount'];
		evaluateTxt = json['evaluateTxt'];
		evaluateScore = json['evaluateScore'];
		isSquareLogo = json['isSquareLogo'];
		giftIcon = json['giftIcon'];
		followText = json['followText'];
		hasCoupon = json['hasCoupon'];
		wareScore = json['wareScore'];
		logisticsTxt = json['logisticsTxt'];
		skuCntText = json['skuCntText'];
		xClass = json['class'];
		brief = json['brief'];
		logisticsGrade = json['logisticsGrade'];
		afterSaleTxt = json['afterSaleTxt'];
		afterSaleScore = json['afterSaleScore'];
		shopImage = json['shopImage'];
		cardType = json['cardType'];
		avgServiceScore = json['avgServiceScore'];
		scoreRankRateGrade = json['scoreRankRateGrade'];
		skuText = json['skuText'];
		logisticsText = json['logisticsText'];
		if (json['promotions'] != null) {
			promotions = new List<ItemInfoResponseFloorsDataShopinfoShopPromotion>();(json['promotions'] as List).forEach((v) { promotions.add(new ItemInfoResponseFloorsDataShopinfoShopPromotion.fromJson(v)); });
		}
		diamond = json['diamond'];
		totalNum = json['totalNum'];
		signboardUrl = json['signboardUrl'];
		shopStateText = json['shopStateText'];
		shopActivityTotalNum = json['shopActivityTotalNum'];
		squareLogo = json['squareLogo'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['shopStarTxt'] = this.shopStarTxt;
		data['score'] = this.score;
		data['afterSaleGrade'] = this.afterSaleGrade;
		data['serviceScore'] = this.serviceScore;
		data['logo'] = this.logo;
		data['avgWareScore'] = this.avgWareScore;
		data['shopId'] = this.shopId;
		data['avgEfficiencyScore'] = this.avgEfficiencyScore;
		data['promotionNum'] = this.promotionNum;
		data['evaluateGrade'] = this.evaluateGrade;
		data['telephone'] = this.telephone;
		data['goodShop'] = this.goodShop;
		data['nameB'] = this.nameB;
		data['globalGoodShop'] = this.globalGoodShop;
		data['logisticsScore'] = this.logisticsScore;
		if (this.hotcates != null) {
      data['hotcates'] =  this.hotcates.map((v) => v.toJson()).toList();
    }
		data['name'] = this.name;
		data['cateGoodShop'] = this.cateGoodShop;
		data['serverText'] = this.serverText;
		data['scoreText'] = this.scoreText;
		data['efficiencyScore'] = this.efficiencyScore;
		data['newNum'] = this.newNum;
		data['hotcatestr'] = this.hotcatestr;
		data['venderType'] = this.venderType;
		data['followCount'] = this.followCount;
		data['evaluateTxt'] = this.evaluateTxt;
		data['evaluateScore'] = this.evaluateScore;
		data['isSquareLogo'] = this.isSquareLogo;
		data['giftIcon'] = this.giftIcon;
		data['followText'] = this.followText;
		data['hasCoupon'] = this.hasCoupon;
		data['wareScore'] = this.wareScore;
		data['logisticsTxt'] = this.logisticsTxt;
		data['skuCntText'] = this.skuCntText;
		data['class'] = this.xClass;
		data['brief'] = this.brief;
		data['logisticsGrade'] = this.logisticsGrade;
		data['afterSaleTxt'] = this.afterSaleTxt;
		data['afterSaleScore'] = this.afterSaleScore;
		data['shopImage'] = this.shopImage;
		data['cardType'] = this.cardType;
		data['avgServiceScore'] = this.avgServiceScore;
		data['scoreRankRateGrade'] = this.scoreRankRateGrade;
		data['skuText'] = this.skuText;
		data['logisticsText'] = this.logisticsText;
		if (this.promotions != null) {
      data['promotions'] =  this.promotions.map((v) => v.toJson()).toList();
    }
		data['diamond'] = this.diamond;
		data['totalNum'] = this.totalNum;
		data['signboardUrl'] = this.signboardUrl;
		data['shopStateText'] = this.shopStateText;
		data['shopActivityTotalNum'] = this.shopActivityTotalNum;
		data['squareLogo'] = this.squareLogo;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoShopHotcate {
	String imgPath;
	int commendSkuId;
	String cname;
	String xClass;
	int cid;

	ItemInfoResponseFloorsDataShopinfoShopHotcate({this.imgPath, this.commendSkuId, this.cname, this.xClass, this.cid});

	ItemInfoResponseFloorsDataShopinfoShopHotcate.fromJson(Map<String, dynamic> json) {
		imgPath = json['imgPath'];
		commendSkuId = json['commendSkuId'];
		cname = json['cname'];
		xClass = json['class'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgPath'] = this.imgPath;
		data['commendSkuId'] = this.commendSkuId;
		data['cname'] = this.cname;
		data['class'] = this.xClass;
		data['cid'] = this.cid;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoShopPromotion {
	String name;
	String xClass;
	String url;

	ItemInfoResponseFloorsDataShopinfoShopPromotion({this.name, this.xClass, this.url});

	ItemInfoResponseFloorsDataShopinfoShopPromotion.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		xClass = json['class'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['class'] = this.xClass;
		data['url'] = this.url;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoCustomerservice {
	bool hasChat;
	bool hasJimi;
	String allGoodJumpUrl;
	String mLink;
	String inShopLookJumpUrl;
	bool online;
	ItemInfoResponseFloorsDataShopinfoCustomerserviceHotlineinfo hotLineInfo;
	ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo chatInfo;

	ItemInfoResponseFloorsDataShopinfoCustomerservice({this.hasChat, this.hasJimi, this.allGoodJumpUrl, this.mLink, this.inShopLookJumpUrl, this.online, this.hotLineInfo, this.chatInfo});

	ItemInfoResponseFloorsDataShopinfoCustomerservice.fromJson(Map<String, dynamic> json) {
		hasChat = json['hasChat'];
		hasJimi = json['hasJimi'];
		allGoodJumpUrl = json['allGoodJumpUrl'];
		mLink = json['mLink'];
		inShopLookJumpUrl = json['inShopLookJumpUrl'];
		online = json['online'];
		hotLineInfo = json['hotLineInfo'] != null ? new ItemInfoResponseFloorsDataShopinfoCustomerserviceHotlineinfo.fromJson(json['hotLineInfo']) : null;
		chatInfo = json['chatInfo'] != null ? new ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo.fromJson(json['chatInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hasChat'] = this.hasChat;
		data['hasJimi'] = this.hasJimi;
		data['allGoodJumpUrl'] = this.allGoodJumpUrl;
		data['mLink'] = this.mLink;
		data['inShopLookJumpUrl'] = this.inShopLookJumpUrl;
		data['online'] = this.online;
		if (this.hotLineInfo != null) {
      data['hotLineInfo'] = this.hotLineInfo.toJson();
    }
		if (this.chatInfo != null) {
      data['chatInfo'] = this.chatInfo.toJson();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoCustomerserviceHotlineinfo {
	String hotLineContent;
	String hotLineService;
	String hotLinePhoneExtend;
	String hotLinePhone;
	String xClass;

	ItemInfoResponseFloorsDataShopinfoCustomerserviceHotlineinfo({this.hotLineContent, this.hotLineService, this.hotLinePhoneExtend, this.hotLinePhone, this.xClass});

	ItemInfoResponseFloorsDataShopinfoCustomerserviceHotlineinfo.fromJson(Map<String, dynamic> json) {
		hotLineContent = json['hotLineContent'];
		hotLineService = json['hotLineService'];
		hotLinePhoneExtend = json['hotLinePhoneExtend'];
		hotLinePhone = json['hotLinePhone'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hotLineContent'] = this.hotLineContent;
		data['hotLineService'] = this.hotLineService;
		data['hotLinePhoneExtend'] = this.hotLinePhoneExtend;
		data['hotLinePhone'] = this.hotLinePhone;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo {
	String allGoodIcon;
	bool isBubble;
	String bottomIcon;
	String allGoodText;
	String shopText;
	String shopIcon;
	String xClass;
	String bottomText;

	ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo({this.allGoodIcon, this.isBubble, this.bottomIcon, this.allGoodText, this.shopText, this.shopIcon, this.xClass, this.bottomText});

	ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo.fromJson(Map<String, dynamic> json) {
		allGoodIcon = json['allGoodIcon'];
		isBubble = json['isBubble'];
		bottomIcon = json['bottomIcon'];
		allGoodText = json['allGoodText'];
		shopText = json['shopText'];
		shopIcon = json['shopIcon'];
		xClass = json['class'];
		bottomText = json['bottomText'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['allGoodIcon'] = this.allGoodIcon;
		data['isBubble'] = this.isBubble;
		data['bottomIcon'] = this.bottomIcon;
		data['allGoodText'] = this.allGoodText;
		data['shopText'] = this.shopText;
		data['shopIcon'] = this.shopIcon;
		data['class'] = this.xClass;
		data['bottomText'] = this.bottomText;
		return data;
	}
}

class ItemInfoResponseFloorsDataAd {
	String adword;
	bool newALContent;
	String color;
	String adLink;
	String textColor;
	String xClass;
	bool hasFold;
	String adLinkContent;

	ItemInfoResponseFloorsDataAd({this.adword, this.newALContent, this.color, this.adLink, this.textColor, this.xClass, this.hasFold, this.adLinkContent});

	ItemInfoResponseFloorsDataAd.fromJson(Map<String, dynamic> json) {
		adword = json['adword'];
		newALContent = json['newALContent'];
		color = json['color'];
		adLink = json['adLink'];
		textColor = json['textColor'];
		xClass = json['class'];
		hasFold = json['hasFold'];
		adLinkContent = json['adLinkContent'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['adword'] = this.adword;
		data['newALContent'] = this.newALContent;
		data['color'] = this.color;
		data['adLink'] = this.adLink;
		data['textColor'] = this.textColor;
		data['class'] = this.xClass;
		data['hasFold'] = this.hasFold;
		data['adLinkContent'] = this.adLinkContent;
		return data;
	}
}

class ItemInfoResponseFloorsDataPriceicon {
	String jiangJia;
	String kanJia;

	ItemInfoResponseFloorsDataPriceicon({this.jiangJia, this.kanJia});

	ItemInfoResponseFloorsDataPriceicon.fromJson(Map<String, dynamic> json) {
		jiangJia = json['jiangJia'];
		kanJia = json['kanJia'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jiangJia'] = this.jiangJia;
		data['kanJia'] = this.kanJia;
		return data;
	}
}

class ItemInfoResponseFloorsDataFlashinfo {
	int cd;
	int state;
	String xClass;

	ItemInfoResponseFloorsDataFlashinfo({this.cd, this.state, this.xClass});

	ItemInfoResponseFloorsDataFlashinfo.fromJson(Map<String, dynamic> json) {
		cd = json['cd'];
		state = json['state'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cd'] = this.cd;
		data['state'] = this.state;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataServiconrelation {
	String iconValue;
	String iconType;
	String xClass;

	ItemInfoResponseFloorsDataServiconrelation({this.iconValue, this.iconType, this.xClass});

	ItemInfoResponseFloorsDataServiconrelation.fromJson(Map<String, dynamic> json) {
		iconValue = json['iconValue'];
		iconType = json['iconType'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['iconValue'] = this.iconValue;
		data['iconType'] = this.iconType;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataImginfo {
	String imgUrl;
	String imgText;
	int imgJumpType;
	String imgJumpUrl;

	ItemInfoResponseFloorsDataImginfo({this.imgUrl, this.imgText, this.imgJumpType, this.imgJumpUrl});

	ItemInfoResponseFloorsDataImginfo.fromJson(Map<String, dynamic> json) {
		imgUrl = json['imgUrl'];
		imgText = json['imgText'];
		imgJumpType = json['imgJumpType'];
		imgJumpUrl = json['imgJumpUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgUrl'] = this.imgUrl;
		data['imgText'] = this.imgText;
		data['imgJumpType'] = this.imgJumpType;
		data['imgJumpUrl'] = this.imgJumpUrl;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguide {
	List<Null> couponInfo;
	ItemInfoResponseFloorsDataPreferentialguideWhitebarinfo whiteBarInfo;
	String iconCode;
	ItemInfoResponseFloorsDataPreferentialguidePromotion promotion;
	bool hasFinanceCoupon;

	ItemInfoResponseFloorsDataPreferentialguide({this.couponInfo, this.whiteBarInfo, this.iconCode, this.promotion, this.hasFinanceCoupon});

	ItemInfoResponseFloorsDataPreferentialguide.fromJson(Map<String, dynamic> json) {
		if (json['couponInfo'] != null) {
			couponInfo = new List<Null>();
		}
		whiteBarInfo = json['whiteBarInfo'] != null ? new ItemInfoResponseFloorsDataPreferentialguideWhitebarinfo.fromJson(json['whiteBarInfo']) : null;
		iconCode = json['iconCode'];
		promotion = json['promotion'] != null ? new ItemInfoResponseFloorsDataPreferentialguidePromotion.fromJson(json['promotion']) : null;
		hasFinanceCoupon = json['hasFinanceCoupon'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.couponInfo != null) {
      data['couponInfo'] =  [];
    }
		if (this.whiteBarInfo != null) {
      data['whiteBarInfo'] = this.whiteBarInfo.toJson();
    }
		data['iconCode'] = this.iconCode;
		if (this.promotion != null) {
      data['promotion'] = this.promotion.toJson();
    }
		data['hasFinanceCoupon'] = this.hasFinanceCoupon;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguideWhitebarinfo {
	String marketingText;
	List<ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo> planInfos;
	bool btUser;
	bool login;
	bool ava;
	String xClass;
	String url;

	ItemInfoResponseFloorsDataPreferentialguideWhitebarinfo({this.marketingText, this.planInfos, this.btUser, this.login, this.ava, this.xClass, this.url});

	ItemInfoResponseFloorsDataPreferentialguideWhitebarinfo.fromJson(Map<String, dynamic> json) {
		marketingText = json['marketingText'];
		if (json['planInfos'] != null) {
			planInfos = new List<ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo>();(json['planInfos'] as List).forEach((v) { planInfos.add(new ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo.fromJson(v)); });
		}
		btUser = json['btUser'];
		login = json['login'];
		ava = json['ava'];
		xClass = json['class'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['marketingText'] = this.marketingText;
		if (this.planInfos != null) {
      data['planInfos'] =  this.planInfos.map((v) => v.toJson()).toList();
    }
		data['btUser'] = this.btUser;
		data['login'] = this.login;
		data['ava'] = this.ava;
		data['class'] = this.xClass;
		data['url'] = this.url;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo {
	String planFee;
	String rate;
	String secondTitle;
	String mainTitle;
	int plan;
	String xClass;
	String laterPay;
	bool isMaxdiscount;

	ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo({this.planFee, this.rate, this.secondTitle, this.mainTitle, this.plan, this.xClass, this.laterPay, this.isMaxdiscount});

	ItemInfoResponseFloorsDataPreferentialguideWhitebarinfoPlaninfo.fromJson(Map<String, dynamic> json) {
		planFee = json['planFee'];
		rate = json['rate'];
		secondTitle = json['secondTitle'];
		mainTitle = json['mainTitle'];
		plan = json['plan'];
		xClass = json['class'];
		laterPay = json['laterPay'];
		isMaxdiscount = json['isMaxdiscount'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['planFee'] = this.planFee;
		data['rate'] = this.rate;
		data['secondTitle'] = this.secondTitle;
		data['mainTitle'] = this.mainTitle;
		data['plan'] = this.plan;
		data['class'] = this.xClass;
		data['laterPay'] = this.laterPay;
		data['isMaxdiscount'] = this.isMaxdiscount;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotion {
	List<ItemInfoResponseFloorsDataPreferentialguidePromotionGift> gift;
	bool canReturnHaggleInfo;
	String plusMark;
	bool isTwoLine;
	List<ItemInfoResponseFloorsDataPreferentialguidePromotionActivity> activity;
	ItemInfoResponseFloorsDataPreferentialguidePromotionScreenlipurmap screenLiPurMap;
	List<Null> tips;
	List<String> activityTypes;
	ItemInfoResponseFloorsDataPreferentialguidePromotionPlusdiscountmap plusDiscountMap;
	String normalMark;
	ItemInfoResponseFloorsDataPreferentialguidePromotionLimitbuyinfo limitBuyInfo;
	bool isBargain;
	String tip;
	List<Null> attach;
	String xClass;
	String prompt;

	ItemInfoResponseFloorsDataPreferentialguidePromotion({this.gift, this.canReturnHaggleInfo, this.plusMark, this.isTwoLine, this.activity, this.screenLiPurMap, this.tips, this.activityTypes, this.plusDiscountMap, this.normalMark, this.limitBuyInfo, this.isBargain, this.tip, this.attach, this.xClass, this.prompt});

	ItemInfoResponseFloorsDataPreferentialguidePromotion.fromJson(Map<String, dynamic> json) {
		if (json['gift'] != null) {
			gift = new List<ItemInfoResponseFloorsDataPreferentialguidePromotionGift>();(json['gift'] as List).forEach((v) { gift.add(new ItemInfoResponseFloorsDataPreferentialguidePromotionGift.fromJson(v)); });
		}
		canReturnHaggleInfo = json['canReturnHaggleInfo'];
		plusMark = json['plusMark'];
		isTwoLine = json['isTwoLine'];
		if (json['activity'] != null) {
			activity = new List<ItemInfoResponseFloorsDataPreferentialguidePromotionActivity>();(json['activity'] as List).forEach((v) { activity.add(new ItemInfoResponseFloorsDataPreferentialguidePromotionActivity.fromJson(v)); });
		}
		screenLiPurMap = json['screenLiPurMap'] != null ? new ItemInfoResponseFloorsDataPreferentialguidePromotionScreenlipurmap.fromJson(json['screenLiPurMap']) : null;
		if (json['tips'] != null) {
			tips = new List<Null>();
		}
		activityTypes = json['activityTypes']?.cast<String>();
		plusDiscountMap = json['plusDiscountMap'] != null ? new ItemInfoResponseFloorsDataPreferentialguidePromotionPlusdiscountmap.fromJson(json['plusDiscountMap']) : null;
		normalMark = json['normalMark'];
		limitBuyInfo = json['limitBuyInfo'] != null ? new ItemInfoResponseFloorsDataPreferentialguidePromotionLimitbuyinfo.fromJson(json['limitBuyInfo']) : null;
		isBargain = json['isBargain'];
		tip = json['tip'];
		if (json['attach'] != null) {
			attach = new List<Null>();
		}
		xClass = json['class'];
		prompt = json['prompt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.gift != null) {
      data['gift'] =  this.gift.map((v) => v.toJson()).toList();
    }
		data['canReturnHaggleInfo'] = this.canReturnHaggleInfo;
		data['plusMark'] = this.plusMark;
		data['isTwoLine'] = this.isTwoLine;
		if (this.activity != null) {
      data['activity'] =  this.activity.map((v) => v.toJson()).toList();
    }
		if (this.screenLiPurMap != null) {
      data['screenLiPurMap'] = this.screenLiPurMap.toJson();
    }
		if (this.tips != null) {
      data['tips'] =  [];
    }
		data['activityTypes'] = this.activityTypes;
		if (this.plusDiscountMap != null) {
      data['plusDiscountMap'] = this.plusDiscountMap.toJson();
    }
		data['normalMark'] = this.normalMark;
		if (this.limitBuyInfo != null) {
      data['limitBuyInfo'] = this.limitBuyInfo.toJson();
    }
		data['isBargain'] = this.isBargain;
		data['tip'] = this.tip;
		if (this.attach != null) {
      data['attach'] =  [];
    }
		data['class'] = this.xClass;
		data['prompt'] = this.prompt;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotionGift {
	String proId;
	String num;
	String link;
	String text;
	String value;
	String skuId;

	ItemInfoResponseFloorsDataPreferentialguidePromotionGift({this.proId, this.num, this.link, this.text, this.value, this.skuId});

	ItemInfoResponseFloorsDataPreferentialguidePromotionGift.fromJson(Map<String, dynamic> json) {
		proId = json['proId'];
		num = json['num'];
		link = json['link'];
		text = json['text'];
		value = json['value'];
		skuId = json['skuId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['proId'] = this.proId;
		data['num'] = this.num;
		data['link'] = this.link;
		data['text'] = this.text;
		data['value'] = this.value;
		data['skuId'] = this.skuId;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotionActivity {
	int proSortNum;
	String proId;
	String link;
	String text;
	String promoId;
	String value;
	String skuId;

	ItemInfoResponseFloorsDataPreferentialguidePromotionActivity({this.proSortNum, this.proId, this.link, this.text, this.promoId, this.value, this.skuId});

	ItemInfoResponseFloorsDataPreferentialguidePromotionActivity.fromJson(Map<String, dynamic> json) {
		proSortNum = json['proSortNum'];
		proId = json['proId'];
		link = json['link'];
		text = json['text'];
		promoId = json['promoId'];
		value = json['value'];
		skuId = json['skuId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['proSortNum'] = this.proSortNum;
		data['proId'] = this.proId;
		data['link'] = this.link;
		data['text'] = this.text;
		data['promoId'] = this.promoId;
		data['value'] = this.value;
		data['skuId'] = this.skuId;
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotionScreenlipurmap {


	ItemInfoResponseFloorsDataPreferentialguidePromotionScreenlipurmap();

	ItemInfoResponseFloorsDataPreferentialguidePromotionScreenlipurmap.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotionPlusdiscountmap {


	ItemInfoResponseFloorsDataPreferentialguidePromotionPlusdiscountmap();

	ItemInfoResponseFloorsDataPreferentialguidePromotionPlusdiscountmap.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class ItemInfoResponseFloorsDataPreferentialguidePromotionLimitbuyinfo {
	String limitNum;
	String noSaleFlag;
	String promotionText;

	ItemInfoResponseFloorsDataPreferentialguidePromotionLimitbuyinfo({this.limitNum, this.noSaleFlag, this.promotionText});

	ItemInfoResponseFloorsDataPreferentialguidePromotionLimitbuyinfo.fromJson(Map<String, dynamic> json) {
		limitNum = json['limitNum'];
		noSaleFlag = json['noSaleFlag'];
		promotionText = json['promotionText'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['limitNum'] = this.limitNum;
		data['noSaleFlag'] = this.noSaleFlag;
		data['promotionText'] = this.promotionText;
		return data;
	}
}

class ItemInfoResponseFloorsDataSlide {
	String slideSelect;
	String slideColor;

	ItemInfoResponseFloorsDataSlide({this.slideSelect, this.slideColor});

	ItemInfoResponseFloorsDataSlide.fromJson(Map<String, dynamic> json) {
		slideSelect = json['slideSelect'];
		slideColor = json['slideColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['slideSelect'] = this.slideSelect;
		data['slideColor'] = this.slideColor;
		return data;
	}
}

class ItemInfoResponseFloorsDataDefaultaddr {
	String townName;
	String cityName;
	String countyId;
	String cityId;
	String townId;
	String provinceName;
	String provinceId;
	String xClass;
	String countyName;

	ItemInfoResponseFloorsDataDefaultaddr({this.townName, this.cityName, this.countyId, this.cityId, this.townId, this.provinceName, this.provinceId, this.xClass, this.countyName});

	ItemInfoResponseFloorsDataDefaultaddr.fromJson(Map<String, dynamic> json) {
		townName = json['townName'];
		cityName = json['cityName'];
		countyId = json['countyId'];
		cityId = json['cityId'];
		townId = json['townId'];
		provinceName = json['provinceName'];
		provinceId = json['provinceId'];
		xClass = json['class'];
		countyName = json['countyName'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['townName'] = this.townName;
		data['cityName'] = this.cityName;
		data['countyId'] = this.countyId;
		data['cityId'] = this.cityId;
		data['townId'] = this.townId;
		data['provinceName'] = this.provinceName;
		data['provinceId'] = this.provinceId;
		data['class'] = this.xClass;
		data['countyName'] = this.countyName;
		return data;
	}
}

class ItemInfoResponseFloorsDataSuit {
	String discountMark;
	int mainSkuId;
	String domain;
	String mainSkuName;
	List<ItemInfoResponseFloorsDataSuitItemlist> itemList;
	String mainSkuPicUrl;
	String suitNumText;
	String xClass;
	String suitMark;

	ItemInfoResponseFloorsDataSuit({this.discountMark, this.mainSkuId, this.domain, this.mainSkuName, this.itemList, this.mainSkuPicUrl, this.suitNumText, this.xClass, this.suitMark});

	ItemInfoResponseFloorsDataSuit.fromJson(Map<String, dynamic> json) {
		discountMark = json['discountMark'];
		mainSkuId = json['mainSkuId'];
		domain = json['domain'];
		mainSkuName = json['mainSkuName'];
		if (json['itemList'] != null) {
			itemList = new List<ItemInfoResponseFloorsDataSuitItemlist>();(json['itemList'] as List).forEach((v) { itemList.add(new ItemInfoResponseFloorsDataSuitItemlist.fromJson(v)); });
		}
		mainSkuPicUrl = json['mainSkuPicUrl'];
		suitNumText = json['suitNumText'];
		xClass = json['class'];
		suitMark = json['suitMark'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['discountMark'] = this.discountMark;
		data['mainSkuId'] = this.mainSkuId;
		data['domain'] = this.domain;
		data['mainSkuName'] = this.mainSkuName;
		if (this.itemList != null) {
      data['itemList'] =  this.itemList.map((v) => v.toJson()).toList();
    }
		data['mainSkuPicUrl'] = this.mainSkuPicUrl;
		data['suitNumText'] = this.suitNumText;
		data['class'] = this.xClass;
		data['suitMark'] = this.suitMark;
		return data;
	}
}

class ItemInfoResponseFloorsDataSuitItemlist {
	int packId;
	int originalSuitType;
	String packType;
	String packName;
	String xClass;
	List<ItemInfoResponseFloorsDataSuitItemlistProductlist> productList;
	String packPrice;
	String packListPrice;

	ItemInfoResponseFloorsDataSuitItemlist({this.packId, this.originalSuitType, this.packType, this.packName, this.xClass, this.productList, this.packPrice, this.packListPrice});

	ItemInfoResponseFloorsDataSuitItemlist.fromJson(Map<String, dynamic> json) {
		packId = json['packId'];
		originalSuitType = json['originalSuitType'];
		packType = json['packType'];
		packName = json['packName'];
		xClass = json['class'];
		if (json['productList'] != null) {
			productList = new List<ItemInfoResponseFloorsDataSuitItemlistProductlist>();(json['productList'] as List).forEach((v) { productList.add(new ItemInfoResponseFloorsDataSuitItemlistProductlist.fromJson(v)); });
		}
		packPrice = json['packPrice'];
		packListPrice = json['packListPrice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['packId'] = this.packId;
		data['originalSuitType'] = this.originalSuitType;
		data['packType'] = this.packType;
		data['packName'] = this.packName;
		data['class'] = this.xClass;
		if (this.productList != null) {
      data['productList'] =  this.productList.map((v) => v.toJson()).toList();
    }
		data['packPrice'] = this.packPrice;
		data['packListPrice'] = this.packListPrice;
		return data;
	}
}

class ItemInfoResponseFloorsDataSuitItemlistProductlist {
	String skuName;
	String name;
	String skuPicUrl;
	String xClass;
	int skuId;

	ItemInfoResponseFloorsDataSuitItemlistProductlist({this.skuName, this.name, this.skuPicUrl, this.xClass, this.skuId});

	ItemInfoResponseFloorsDataSuitItemlistProductlist.fromJson(Map<String, dynamic> json) {
		skuName = json['skuName'];
		name = json['name'];
		skuPicUrl = json['skuPicUrl'];
		xClass = json['class'];
		skuId = json['skuId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['skuName'] = this.skuName;
		data['name'] = this.name;
		data['skuPicUrl'] = this.skuPicUrl;
		data['class'] = this.xClass;
		data['skuId'] = this.skuId;
		return data;
	}
}

class ItemInfoResponseFloorsDataActions {
	List<ItemInfoResponseFloorsDataActionsBizact> bizActs;

	ItemInfoResponseFloorsDataActions({this.bizActs});

	ItemInfoResponseFloorsDataActions.fromJson(Map<String, dynamic> json) {
		if (json['bizActs'] != null) {
			bizActs = new List<ItemInfoResponseFloorsDataActionsBizact>();(json['bizActs'] as List).forEach((v) { bizActs.add(new ItemInfoResponseFloorsDataActionsBizact.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bizActs != null) {
      data['bizActs'] =  this.bizActs.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataActionsBizact {
	int jumpType;
	bool truthBigSale;
	String bizKey;
	String icon;
	String xClass;
	bool mustLogin;
	String url;
	String desc;

	ItemInfoResponseFloorsDataActionsBizact({this.jumpType, this.truthBigSale, this.bizKey, this.icon, this.xClass, this.mustLogin, this.url, this.desc});

	ItemInfoResponseFloorsDataActionsBizact.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		truthBigSale = json['truthBigSale'];
		bizKey = json['bizKey'];
		icon = json['icon'];
		xClass = json['class'];
		mustLogin = json['mustLogin'];
		url = json['url'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['truthBigSale'] = this.truthBigSale;
		data['bizKey'] = this.bizKey;
		data['icon'] = this.icon;
		data['class'] = this.xClass;
		data['mustLogin'] = this.mustLogin;
		data['url'] = this.url;
		data['desc'] = this.desc;
		return data;
	}
}

class ItemInfoResponseFloorsDataRecommendtoast {
	String toastExplain;
	List<ItemInfoResponseFloorsDataRecommandtoastRecommands> recommends;
	String xClass;
	String url;

	ItemInfoResponseFloorsDataRecommendtoast({this.toastExplain, this.recommends, this.xClass, this.url});

	ItemInfoResponseFloorsDataRecommendtoast.fromJson(Map<String, dynamic> json) {
		toastExplain = json['toastExplain'];
		if (json['recommends'] != null) {
			recommends = new List<ItemInfoResponseFloorsDataRecommandtoastRecommands>();(json['recommends'] as List).forEach((v) { recommends.add(new ItemInfoResponseFloorsDataRecommandtoastRecommands.fromJson(v)); });
		}
		xClass = json['class'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['toastExplain'] = this.toastExplain;
		if (this.recommends != null) {
      data['recommends'] =  this.recommends.map((v) => v.toJson()).toList();
    }
		data['class'] = this.xClass;
		data['url'] = this.url;
		return data;
	}
}

class ItemInfoResponseFloorsDataRecommandtoastRecommands {
	String image;
	String xClass;
	String url;

	ItemInfoResponseFloorsDataRecommandtoastRecommands({this.image, this.xClass, this.url});

	ItemInfoResponseFloorsDataRecommandtoastRecommands.fromJson(Map<String, dynamic> json) {
		image = json['image'];
		xClass = json['class'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image'] = this.image;
		data['class'] = this.xClass;
		data['url'] = this.url;
		return data;
	}
}

class ItemInfoResponseFloorsDataEventparam {
	String sep;

	ItemInfoResponseFloorsDataEventparam({this.sep});

	ItemInfoResponseFloorsDataEventparam.fromJson(Map<String, dynamic> json) {
		sep = json['sep'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sep'] = this.sep;
		return data;
	}
}

class ItemInfoResponseFloorsDataCcckernel {
	String icon;
	String paramName;
	String xClass;
	String paramValue;

	ItemInfoResponseFloorsDataCcckernel({this.icon, this.paramName, this.xClass, this.paramValue});

	ItemInfoResponseFloorsDataCcckernel.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		paramName = json['paramName'];
		xClass = json['class'];
		paramValue = json['paramValue'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['paramName'] = this.paramName;
		data['class'] = this.xClass;
		data['paramValue'] = this.paramValue;
		return data;
	}
}

class ItemInfoResponseFloorsDataUnitedrank {
	String jumpType;
	String titleImage;
	int rankType;
	String icon;
	String id;
	String bgImage;
	String arrowImage;
	String url;
	String desc;

	ItemInfoResponseFloorsDataUnitedrank({this.jumpType, this.titleImage, this.rankType, this.icon, this.id, this.bgImage, this.arrowImage, this.url, this.desc});

	ItemInfoResponseFloorsDataUnitedrank.fromJson(Map<String, dynamic> json) {
		jumpType = json['jumpType'];
		titleImage = json['titleImage'];
		rankType = json['rankType'];
		icon = json['icon'];
		id = json['id'];
		bgImage = json['bgImage'];
		arrowImage = json['arrowImage'];
		url = json['url'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['jumpType'] = this.jumpType;
		data['titleImage'] = this.titleImage;
		data['rankType'] = this.rankType;
		data['icon'] = this.icon;
		data['id'] = this.id;
		data['bgImage'] = this.bgImage;
		data['arrowImage'] = this.arrowImage;
		data['url'] = this.url;
		data['desc'] = this.desc;
		return data;
	}
}

class ItemInfoResponseFloorsDataPriceinfo {
	String saveMoney;
	String originPrice;
	String jprice;

	ItemInfoResponseFloorsDataPriceinfo({this.saveMoney, this.originPrice, this.jprice});

	ItemInfoResponseFloorsDataPriceinfo.fromJson(Map<String, dynamic> json) {
		saveMoney = json['saveMoney'];
		originPrice = json['originPrice'];
		jprice = json['jprice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['saveMoney'] = this.saveMoney;
		data['originPrice'] = this.originPrice;
		data['jprice'] = this.jprice;
		return data;
	}
}

class ItemInfoResponseFloorsDataAttentioninfo {
	String txt2;
	String txt1;

	ItemInfoResponseFloorsDataAttentioninfo({this.txt2, this.txt1});

	ItemInfoResponseFloorsDataAttentioninfo.fromJson(Map<String, dynamic> json) {
		txt2 = json['txt2'];
		txt1 = json['txt1'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['txt2'] = this.txt2;
		data['txt1'] = this.txt1;
		return data;
	}
}

class ItemInfoResponseFloorsDataWeightinfo {
	String title;
	String xClass;
	String content;

	ItemInfoResponseFloorsDataWeightinfo({this.title, this.xClass, this.content});

	ItemInfoResponseFloorsDataWeightinfo.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		xClass = json['class'];
		content = json['content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['class'] = this.xClass;
		data['content'] = this.content;
		return data;
	}
}

class ItemInfoResponseFloorsDataButtoninfo {
	ItemInfoResponseFloorsDataButtoninfoMain main;
	String xClass;
	ItemInfoResponseFloorsDataButtoninfoSecond second;

	ItemInfoResponseFloorsDataButtoninfo({this.main, this.xClass, this.second});

	ItemInfoResponseFloorsDataButtoninfo.fromJson(Map<String, dynamic> json) {
		main = json['main'] != null ? new ItemInfoResponseFloorsDataButtoninfoMain.fromJson(json['main']) : null;
		xClass = json['class'];
		second = json['second'] != null ? new ItemInfoResponseFloorsDataButtoninfoSecond.fromJson(json['second']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.main != null) {
      data['main'] = this.main.toJson();
    }
		data['class'] = this.xClass;
		if (this.second != null) {
      data['second'] = this.second.toJson();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataButtoninfoMain {
	String bgColor;
	String name;
	int source;
	int type;
	String xClass;
	String textColor;

	ItemInfoResponseFloorsDataButtoninfoMain({this.bgColor, this.name, this.source, this.type, this.xClass, this.textColor});

	ItemInfoResponseFloorsDataButtoninfoMain.fromJson(Map<String, dynamic> json) {
		bgColor = json['bgColor'];
		name = json['name'];
		source = json['source'];
		type = json['type'];
		xClass = json['class'];
		textColor = json['textColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bgColor'] = this.bgColor;
		data['name'] = this.name;
		data['source'] = this.source;
		data['type'] = this.type;
		data['class'] = this.xClass;
		data['textColor'] = this.textColor;
		return data;
	}
}

class ItemInfoResponseFloorsDataButtoninfoSecond {
	String bgColor;
	String name;
	int source;
	int type;
	String xClass;
	String textColor;

	ItemInfoResponseFloorsDataButtoninfoSecond({this.bgColor, this.name, this.source, this.type, this.xClass, this.textColor});

	ItemInfoResponseFloorsDataButtoninfoSecond.fromJson(Map<String, dynamic> json) {
		bgColor = json['bgColor'];
		name = json['name'];
		source = json['source'];
		type = json['type'];
		xClass = json['class'];
		textColor = json['textColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bgColor'] = this.bgColor;
		data['name'] = this.name;
		data['source'] = this.source;
		data['type'] = this.type;
		data['class'] = this.xClass;
		data['textColor'] = this.textColor;
		return data;
	}
}

class ItemInfoResponseFloorsDataPointinfo {
	bool isShowAr;
	String trustworthy;

	ItemInfoResponseFloorsDataPointinfo({this.isShowAr, this.trustworthy});

	ItemInfoResponseFloorsDataPointinfo.fromJson(Map<String, dynamic> json) {
		isShowAr = json['isShowAr'];
		trustworthy = json['trustworthy'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isShowAr'] = this.isShowAr;
		data['trustworthy'] = this.trustworthy;
		return data;
	}
}

class ItemInfoResponseFloorsDataWareimage {
	String small;
	String big;
	String share;

	ItemInfoResponseFloorsDataWareimage({this.small, this.big, this.share});

	ItemInfoResponseFloorsDataWareimage.fromJson(Map<String, dynamic> json) {
		small = json['small'];
		big = json['big'];
		share = json['share'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['small'] = this.small;
		data['big'] = this.big;
		data['share'] = this.share;
		return data;
	}
}

class ItemInfoResponseFloorsDataWareinfo {
	String venderId;
	String name;
	String skuId;

	ItemInfoResponseFloorsDataWareinfo({this.venderId, this.name, this.skuId});

	ItemInfoResponseFloorsDataWareinfo.fromJson(Map<String, dynamic> json) {
		venderId = json['venderId'];
		name = json['name'];
		skuId = json['skuId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['venderId'] = this.venderId;
		data['name'] = this.name;
		data['skuId'] = this.skuId;
		return data;
	}
}

class ItemInfoResponseFloorsDataPromotioninfo {
	bool isBargain;
	String prompt;

	ItemInfoResponseFloorsDataPromotioninfo({this.isBargain, this.prompt});

	ItemInfoResponseFloorsDataPromotioninfo.fromJson(Map<String, dynamic> json) {
		isBargain = json['isBargain'];
		prompt = json['prompt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isBargain'] = this.isBargain;
		data['prompt'] = this.prompt;
		return data;
	}
}

class ItemInfoResponseFloorsDataTrustworthy {
	String guideText;
	List<ItemInfoResponseFloorsDataTrustworthyIconlist> iconList;
	String iconInDialog;
	String iconUrl;
	String guideJumpUrl;
	String type;
	List<ItemInfoResponseFloorsDataTrustworthyIconlistone> iconListOne;
	String xClass;
	String separator;

	ItemInfoResponseFloorsDataTrustworthy({this.guideText, this.iconList, this.iconInDialog, this.iconUrl, this.guideJumpUrl, this.type, this.iconListOne, this.xClass, this.separator});

	ItemInfoResponseFloorsDataTrustworthy.fromJson(Map<String, dynamic> json) {
		guideText = json['guideText'];
		if (json['iconList'] != null) {
			iconList = new List<ItemInfoResponseFloorsDataTrustworthyIconlist>();(json['iconList'] as List).forEach((v) { iconList.add(new ItemInfoResponseFloorsDataTrustworthyIconlist.fromJson(v)); });
		}
		iconInDialog = json['iconInDialog'];
		iconUrl = json['iconUrl'];
		guideJumpUrl = json['guideJumpUrl'];
		type = json['type'];
		if (json['iconListOne'] != null) {
			iconListOne = new List<ItemInfoResponseFloorsDataTrustworthyIconlistone>();(json['iconListOne'] as List).forEach((v) { iconListOne.add(new ItemInfoResponseFloorsDataTrustworthyIconlistone.fromJson(v)); });
		}
		xClass = json['class'];
		separator = json['separator'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['guideText'] = this.guideText;
		if (this.iconList != null) {
      data['iconList'] =  this.iconList.map((v) => v.toJson()).toList();
    }
		data['iconInDialog'] = this.iconInDialog;
		data['iconUrl'] = this.iconUrl;
		data['guideJumpUrl'] = this.guideJumpUrl;
		data['type'] = this.type;
		if (this.iconListOne != null) {
      data['iconListOne'] =  this.iconListOne.map((v) => v.toJson()).toList();
    }
		data['class'] = this.xClass;
		data['separator'] = this.separator;
		return data;
	}
}

class ItemInfoResponseFloorsDataTrustworthyIconlist {
	int sortId;
	bool jichu;
	String imageUrl;
	String iconType;
	bool xShow;
	String tip;
	String text;
	String xClass;

	ItemInfoResponseFloorsDataTrustworthyIconlist({this.sortId, this.jichu, this.imageUrl, this.iconType, this.xShow, this.tip, this.text, this.xClass});

	ItemInfoResponseFloorsDataTrustworthyIconlist.fromJson(Map<String, dynamic> json) {
		sortId = json['sortId'];
		jichu = json['jichu'];
		imageUrl = json['imageUrl'];
		iconType = json['iconType'];
		xShow = json['show'];
		tip = json['tip'];
		text = json['text'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sortId'] = this.sortId;
		data['jichu'] = this.jichu;
		data['imageUrl'] = this.imageUrl;
		data['iconType'] = this.iconType;
		data['show'] = this.xShow;
		data['tip'] = this.tip;
		data['text'] = this.text;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataTrustworthyIconlistone {
	int sortId;
	bool jichu;
	String imageUrl;
	String iconType;
	bool xShow;
	String tip;
	String text;
	String xClass;

	ItemInfoResponseFloorsDataTrustworthyIconlistone({this.sortId, this.jichu, this.imageUrl, this.iconType, this.xShow, this.tip, this.text, this.xClass});

	ItemInfoResponseFloorsDataTrustworthyIconlistone.fromJson(Map<String, dynamic> json) {
		sortId = json['sortId'];
		jichu = json['jichu'];
		imageUrl = json['imageUrl'];
		iconType = json['iconType'];
		xShow = json['show'];
		tip = json['tip'];
		text = json['text'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sortId'] = this.sortId;
		data['jichu'] = this.jichu;
		data['imageUrl'] = this.imageUrl;
		data['iconType'] = this.iconType;
		data['show'] = this.xShow;
		data['tip'] = this.tip;
		data['text'] = this.text;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataBizlist {
	String bizKey;
	String icon;
	ItemInfoResponseFloorsDataBizlistJumpdata jumpData;
	String title;
	int type;
	bool mustLogin;
	String url;
	String desc;

	ItemInfoResponseFloorsDataBizlist({this.bizKey, this.icon, this.jumpData, this.title, this.type, this.mustLogin, this.url, this.desc});

	ItemInfoResponseFloorsDataBizlist.fromJson(Map<String, dynamic> json) {
		bizKey = json['bizKey'];
		icon = json['icon'];
		jumpData = json['jumpData'] != null ? new ItemInfoResponseFloorsDataBizlistJumpdata.fromJson(json['jumpData']) : null;
		title = json['title'];
		type = json['type'];
		mustLogin = json['mustLogin'];
		url = json['url'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bizKey'] = this.bizKey;
		data['icon'] = this.icon;
		if (this.jumpData != null) {
      data['jumpData'] = this.jumpData.toJson();
    }
		data['title'] = this.title;
		data['type'] = this.type;
		data['mustLogin'] = this.mustLogin;
		data['url'] = this.url;
		data['desc'] = this.desc;
		return data;
	}
}

class ItemInfoResponseFloorsDataBizlistJumpdata {
	int bizType;

	ItemInfoResponseFloorsDataBizlistJumpdata({this.bizType});

	ItemInfoResponseFloorsDataBizlistJumpdata.fromJson(Map<String, dynamic> json) {
		bizType = json['bizType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bizType'] = this.bizType;
		return data;
	}
}

class ItemInfoResponseFloorsDataShareimginfo {
	String priceDes;
	String promotionStr;
	bool markingOff;
	String shareLanguage;
	String secondPrice;
	String jprice;
	String priceUrl;

	ItemInfoResponseFloorsDataShareimginfo({this.priceDes, this.promotionStr, this.markingOff, this.shareLanguage, this.secondPrice, this.jprice, this.priceUrl});

	ItemInfoResponseFloorsDataShareimginfo.fromJson(Map<String, dynamic> json) {
		priceDes = json['priceDes'];
		promotionStr = json['promotionStr'];
		markingOff = json['markingOff'];
		shareLanguage = json['shareLanguage'];
		secondPrice = json['secondPrice'];
		jprice = json['jprice'];
		priceUrl = json['priceUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['priceDes'] = this.priceDes;
		data['promotionStr'] = this.promotionStr;
		data['markingOff'] = this.markingOff;
		data['shareLanguage'] = this.shareLanguage;
		data['secondPrice'] = this.secondPrice;
		data['jprice'] = this.jprice;
		data['priceUrl'] = this.priceUrl;
		return data;
	}
}

class ItemInfoResponseOthers {
	String templateType;

	ItemInfoResponseOthers({this.templateType});

	ItemInfoResponseOthers.fromJson(Map<String, dynamic> json) {
		templateType = json['templateType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['templateType'] = this.templateType;
		return data;
	}
}
