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
	String bId;

	ItemInfoResponseFloor({this.cf, this.data, this.sortId, this.mId, this.bId});

	ItemInfoResponseFloor.fromJson(Map<String, dynamic> json) {
		cf = json['cf'] != null ? new ItemInfoResponseFloorsCf.fromJson(json['cf']) : null;
		data = json['data'] != null ? new ItemInfoResponseFloorsData.fromJson(json['data']) : null;
		sortId = json['sortId'];
		mId = json['mId'];
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
	ItemInfoResponseFloorsDataColorsizeinfo colorSizeInfo;
	ItemInfoResponseFloorsDataEventparam eventParam;
	int rankType;
	bool isOpenCar;
	ItemInfoResponseFloorsDataPromotionpoint promotionPoint;
	ItemInfoResponseFloorsDataDefineskinchange defineSkinChange;
	bool supportSale;
	ItemInfoResponseFloorsDataPriceinfo priceInfo;
	ItemInfoResponseFloorsDataAttentioninfo attentionInfo;
	ItemInfoResponseFloorsDataJdserplusinfo jdSerPlusInfo;
	bool abTest800;
	ItemInfoResponseFloorsDataYuyueinfo yuyueInfo;
	bool isOpenNode;
	String rankName;
	ItemInfoResponseFloorsDataProperty property;
	ItemInfoResponseFloorsDataWeightinfo weightInfo;
	ItemInfoResponseFloorsDataButtoninfo buttonInfo;
	String priceLabel;
	ItemInfoResponseFloorsDataYanbaoinfo yanBaoInfo;
	ItemInfoResponseFloorsDataDiscountpriceinfo discountPriceInfo;
	ItemInfoResponseFloorsDataAbtestinfo abTestInfo;
	ItemInfoResponseFloorsDataShopinfo shopInfo;
	ItemInfoResponseFloorsDataPointinfo pointInfo;
	List<ItemInfoResponseFloorsDataWareimage> wareImage;
	ItemInfoResponseFloorsDataFlashinfo flashInfo;
	ItemInfoResponseFloorsDataWareinfo wareInfo;
	bool isDesCbc;
	ItemInfoResponseFloorsDataPromotioninfo promotionInfo;
	String tabUrl;
	bool isOpenH5;
	bool isOpen;
	bool appointAndPresaleOpen;
	ItemInfoResponseFloorsDataSuit suit;
	ItemInfoResponseFloorsDataRecommendtoast recommendToast;
	ItemInfoResponseFloorsDataShareimginfo shareImgInfo;

	ItemInfoResponseFloorsData({this.colorSizeInfo, this.eventParam, this.rankType, this.isOpenCar, this.promotionPoint, this.defineSkinChange, this.supportSale, this.priceInfo, this.attentionInfo, this.jdSerPlusInfo, this.abTest800, this.yuyueInfo, this.isOpenNode, this.rankName, this.property, this.weightInfo, this.buttonInfo, this.priceLabel, this.yanBaoInfo, this.discountPriceInfo, this.abTestInfo, this.shopInfo, this.pointInfo, this.wareImage, this.flashInfo, this.wareInfo, this.isDesCbc, this.promotionInfo, this.tabUrl, this.isOpenH5, this.isOpen, this.appointAndPresaleOpen, this.suit, this.recommendToast, this.shareImgInfo});

	ItemInfoResponseFloorsData.fromJson(Map<String, dynamic> json) {
		colorSizeInfo = json['colorSizeInfo'] != null ? new ItemInfoResponseFloorsDataColorsizeinfo.fromJson(json['colorSizeInfo']) : null;
		eventParam = json['eventParam'] != null ? new ItemInfoResponseFloorsDataEventparam.fromJson(json['eventParam']) : null;
		rankType = json['rankType'];
		isOpenCar = json['isOpenCar'];
		promotionPoint = json['promotionPoint'] != null ? new ItemInfoResponseFloorsDataPromotionpoint.fromJson(json['promotionPoint']) : null;
		defineSkinChange = json['defineSkinChange'] != null ? new ItemInfoResponseFloorsDataDefineskinchange.fromJson(json['defineSkinChange']) : null;
		supportSale = json['supportSale'];
		priceInfo = json['priceInfo'] != null ? new ItemInfoResponseFloorsDataPriceinfo.fromJson(json['priceInfo']) : null;
		attentionInfo = json['attentionInfo'] != null ? new ItemInfoResponseFloorsDataAttentioninfo.fromJson(json['attentionInfo']) : null;
		jdSerPlusInfo = json['jdSerPlusInfo'] != null ? new ItemInfoResponseFloorsDataJdserplusinfo.fromJson(json['jdSerPlusInfo']) : null;
		abTest800 = json['abTest800'];
		yuyueInfo = json['yuyueInfo'] != null ? new ItemInfoResponseFloorsDataYuyueinfo.fromJson(json['yuyueInfo']) : null;
		isOpenNode = json['isOpenNode'];
		rankName = json['rankName'];
		property = json['property'] != null ? new ItemInfoResponseFloorsDataProperty.fromJson(json['property']) : null;
		weightInfo = json['weightInfo'] != null ? new ItemInfoResponseFloorsDataWeightinfo.fromJson(json['weightInfo']) : null;
		buttonInfo = json['buttonInfo'] != null ? new ItemInfoResponseFloorsDataButtoninfo.fromJson(json['buttonInfo']) : null;
		priceLabel = json['priceLabel'];
		yanBaoInfo = json['yanBaoInfo'] != null ? new ItemInfoResponseFloorsDataYanbaoinfo.fromJson(json['yanBaoInfo']) : null;
		discountPriceInfo = json['discountPriceInfo'] != null ? new ItemInfoResponseFloorsDataDiscountpriceinfo.fromJson(json['discountPriceInfo']) : null;
		abTestInfo = json['abTestInfo'] != null ? new ItemInfoResponseFloorsDataAbtestinfo.fromJson(json['abTestInfo']) : null;
		shopInfo = json['shopInfo'] != null ? new ItemInfoResponseFloorsDataShopinfo.fromJson(json['shopInfo']) : null;
		pointInfo = json['pointInfo'] != null ? new ItemInfoResponseFloorsDataPointinfo.fromJson(json['pointInfo']) : null;
		if (json['wareImage'] != null) {
			wareImage = new List<ItemInfoResponseFloorsDataWareimage>();(json['wareImage'] as List).forEach((v) { wareImage.add(new ItemInfoResponseFloorsDataWareimage.fromJson(v)); });
		}
		flashInfo = json['flashInfo'] != null ? new ItemInfoResponseFloorsDataFlashinfo.fromJson(json['flashInfo']) : null;
		wareInfo = json['wareInfo'] != null ? new ItemInfoResponseFloorsDataWareinfo.fromJson(json['wareInfo']) : null;
		isDesCbc = json['isDesCbc'];
		promotionInfo = json['promotionInfo'] != null ? new ItemInfoResponseFloorsDataPromotioninfo.fromJson(json['promotionInfo']) : null;
		tabUrl = json['tabUrl'];
		isOpenH5 = json['isOpenH5'];
		isOpen = json['isOpen'];
		appointAndPresaleOpen = json['appointAndPresaleOpen'];
		suit = json['suit'] != null ? new ItemInfoResponseFloorsDataSuit.fromJson(json['suit']) : null;
		recommendToast = json['recommendToast'] != null ? new ItemInfoResponseFloorsDataRecommendtoast.fromJson(json['recommendToast']) : null;
		shareImgInfo = json['shareImgInfo'] != null ? new ItemInfoResponseFloorsDataShareimginfo.fromJson(json['shareImgInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.colorSizeInfo != null) {
      data['colorSizeInfo'] = this.colorSizeInfo.toJson();
    }
		if (this.eventParam != null) {
      data['eventParam'] = this.eventParam.toJson();
    }
		data['rankType'] = this.rankType;
		data['isOpenCar'] = this.isOpenCar;
		if (this.promotionPoint != null) {
      data['promotionPoint'] = this.promotionPoint.toJson();
    }
		if (this.defineSkinChange != null) {
      data['defineSkinChange'] = this.defineSkinChange.toJson();
    }
		data['supportSale'] = this.supportSale;
		if (this.priceInfo != null) {
      data['priceInfo'] = this.priceInfo.toJson();
    }
		if (this.attentionInfo != null) {
      data['attentionInfo'] = this.attentionInfo.toJson();
    }
		if (this.jdSerPlusInfo != null) {
      data['jdSerPlusInfo'] = this.jdSerPlusInfo.toJson();
    }
		data['abTest800'] = this.abTest800;
		if (this.yuyueInfo != null) {
      data['yuyueInfo'] = this.yuyueInfo.toJson();
    }
		data['isOpenNode'] = this.isOpenNode;
		data['rankName'] = this.rankName;
		if (this.property != null) {
      data['property'] = this.property.toJson();
    }
		if (this.weightInfo != null) {
      data['weightInfo'] = this.weightInfo.toJson();
    }
		if (this.buttonInfo != null) {
      data['buttonInfo'] = this.buttonInfo.toJson();
    }
		data['priceLabel'] = this.priceLabel;
		if (this.yanBaoInfo != null) {
      data['yanBaoInfo'] = this.yanBaoInfo.toJson();
    }
		if (this.discountPriceInfo != null) {
      data['discountPriceInfo'] = this.discountPriceInfo.toJson();
    }
		if (this.abTestInfo != null) {
      data['abTestInfo'] = this.abTestInfo.toJson();
    }
		if (this.shopInfo != null) {
      data['shopInfo'] = this.shopInfo.toJson();
    }
		if (this.pointInfo != null) {
      data['pointInfo'] = this.pointInfo.toJson();
    }
		if (this.wareImage != null) {
      data['wareImage'] =  this.wareImage.map((v) => v.toJson()).toList();
    }
		if (this.flashInfo != null) {
      data['flashInfo'] = this.flashInfo.toJson();
    }
		if (this.wareInfo != null) {
      data['wareInfo'] = this.wareInfo.toJson();
    }
		data['isDesCbc'] = this.isDesCbc;
		if (this.promotionInfo != null) {
      data['promotionInfo'] = this.promotionInfo.toJson();
    }
		data['tabUrl'] = this.tabUrl;
		data['isOpenH5'] = this.isOpenH5;
		data['isOpen'] = this.isOpen;
		data['appointAndPresaleOpen'] = this.appointAndPresaleOpen;
		if (this.suit != null) {
      data['suit'] = this.suit.toJson();
    }
		if (this.recommendToast != null) {
      data['recommendToast'] = this.recommendToast.toJson();
    }
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

class ItemInfoResponseFloorsDataPriceinfo {
	String originPrice;
	String jprice;

	ItemInfoResponseFloorsDataPriceinfo({this.originPrice, this.jprice});

	ItemInfoResponseFloorsDataPriceinfo.fromJson(Map<String, dynamic> json) {
		originPrice = json['originPrice'];
		jprice = json['jprice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
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

	ItemInfoResponseFloorsDataProperty({this.isJzfp, this.suitABTest, this.buyMaxNum, this.easyBuy, this.isFxyl, this.isRegisterUser, this.isFlimPrint, this.isShowShopNameB, this.showEmptyPrice, this.noStockOrder, this.virtualCardUrl, this.addAndSubToast, this.isEasyBuyPrice, this.isRx, this.opForIos, this.stockNotice, this.treatyIntroUrl, this.isCollect, this.recTabEnable, this.isJx, this.isOTC, this.cartFlag, this.wareImageTest, this.treatyIntroText, this.isPop, this.isOP, this.chatUrl, this.androidImageSwitch, this.shareUrl, this.evaluateTabEnable, this.category, this.isEncrypt, this.isRegularPrice});

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

class ItemInfoResponseFloorsDataDiscountpriceinfo {
	String xClass;

	ItemInfoResponseFloorsDataDiscountpriceinfo({this.xClass});

	ItemInfoResponseFloorsDataDiscountpriceinfo.fromJson(Map<String, dynamic> json) {
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
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
	ItemInfoResponseFloorsDataShopinfoShoptag shopTag;
	ItemInfoResponseFloorsDataShopinfoShop shop;
	ItemInfoResponseFloorsDataShopinfoCustomerservice customerService;

	ItemInfoResponseFloorsDataShopinfo({this.shopTag, this.shop, this.customerService});

	ItemInfoResponseFloorsDataShopinfo.fromJson(Map<String, dynamic> json) {
		shopTag = json['shopTag'] != null ? new ItemInfoResponseFloorsDataShopinfoShoptag.fromJson(json['shopTag']) : null;
		shop = json['shop'] != null ? new ItemInfoResponseFloorsDataShopinfoShop.fromJson(json['shop']) : null;
		customerService = json['customerService'] != null ? new ItemInfoResponseFloorsDataShopinfoCustomerservice.fromJson(json['customerService']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.shopTag != null) {
      data['shopTag'] = this.shopTag.toJson();
    }
		if (this.shop != null) {
      data['shop'] = this.shop.toJson();
    }
		if (this.customerService != null) {
      data['customerService'] = this.customerService.toJson();
    }
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoShoptag {
	String tagIcon;
	String shopMark;
	int priority;
	String xClass;

	ItemInfoResponseFloorsDataShopinfoShoptag({this.tagIcon, this.shopMark, this.priority, this.xClass});

	ItemInfoResponseFloorsDataShopinfoShoptag.fromJson(Map<String, dynamic> json) {
		tagIcon = json['tagIcon'];
		shopMark = json['shopMark'];
		priority = json['priority'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tagIcon'] = this.tagIcon;
		data['shopMark'] = this.shopMark;
		data['priority'] = this.priority;
		data['class'] = this.xClass;
		return data;
	}
}

class ItemInfoResponseFloorsDataShopinfoShop {
	int followCount;
	bool isSquareLogo;
	int score;
	String giftIcon;
	String followText;
	bool hasCoupon;
	int wareScore;
	int serviceScore;
	String logo;
	int avgWareScore;
	int shopId;
	String skuCntText;
	int avgEfficiencyScore;
	String xClass;
	int promotionNum;
	String brief;
	String shopImage;
	int cardType;
	int avgServiceScore;
	String telephone;
	int goodShop;
	String nameB;
	String skuText;
	String logisticsText;
	bool diamond;
	int globalGoodShop;
	int totalNum;
	String signboardUrl;
	List<ItemInfoResponseFloorsDataShopinfoShopHotcate> hotcates;
	String shopStateText;
	String name;
	int shopActivityTotalNum;
	int cateGoodShop;
	String serverText;
	int efficiencyScore;
	String squareLogo;
	int newNum;
	String hotcatestr;
	String venderType;

	ItemInfoResponseFloorsDataShopinfoShop({this.followCount, this.isSquareLogo, this.score, this.giftIcon, this.followText, this.hasCoupon, this.wareScore, this.serviceScore, this.logo, this.avgWareScore, this.shopId, this.skuCntText, this.avgEfficiencyScore, this.xClass, this.promotionNum, this.brief, this.shopImage, this.cardType, this.avgServiceScore, this.telephone, this.goodShop, this.nameB, this.skuText, this.logisticsText, this.diamond, this.globalGoodShop, this.totalNum, this.signboardUrl, this.hotcates, this.shopStateText, this.name, this.shopActivityTotalNum, this.cateGoodShop, this.serverText, this.efficiencyScore, this.squareLogo, this.newNum, this.hotcatestr, this.venderType});

	ItemInfoResponseFloorsDataShopinfoShop.fromJson(Map<String, dynamic> json) {
		followCount = json['followCount'];
		isSquareLogo = json['isSquareLogo'];
		score = json['score'];
		giftIcon = json['giftIcon'];
		followText = json['followText'];
		hasCoupon = json['hasCoupon'];
		wareScore = json['wareScore'];
		serviceScore = json['serviceScore'];
		logo = json['logo'];
		avgWareScore = json['avgWareScore'];
		shopId = json['shopId'];
		skuCntText = json['skuCntText'];
		avgEfficiencyScore = json['avgEfficiencyScore'];
		xClass = json['class'];
		promotionNum = json['promotionNum'];
		brief = json['brief'];
		shopImage = json['shopImage'];
		cardType = json['cardType'];
		avgServiceScore = json['avgServiceScore'];
		telephone = json['telephone'];
		goodShop = json['goodShop'];
		nameB = json['nameB'];
		skuText = json['skuText'];
		logisticsText = json['logisticsText'];
		diamond = json['diamond'];
		globalGoodShop = json['globalGoodShop'];
		totalNum = json['totalNum'];
		signboardUrl = json['signboardUrl'];
		if (json['hotcates'] != null) {
			hotcates = new List<ItemInfoResponseFloorsDataShopinfoShopHotcate>();(json['hotcates'] as List).forEach((v) { hotcates.add(new ItemInfoResponseFloorsDataShopinfoShopHotcate.fromJson(v)); });
		}
		shopStateText = json['shopStateText'];
		name = json['name'];
		shopActivityTotalNum = json['shopActivityTotalNum'];
		cateGoodShop = json['cateGoodShop'];
		serverText = json['serverText'];
		efficiencyScore = json['efficiencyScore'];
		squareLogo = json['squareLogo'];
		newNum = json['newNum'];
		hotcatestr = json['hotcatestr'];
		venderType = json['venderType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['followCount'] = this.followCount;
		data['isSquareLogo'] = this.isSquareLogo;
		data['score'] = this.score;
		data['giftIcon'] = this.giftIcon;
		data['followText'] = this.followText;
		data['hasCoupon'] = this.hasCoupon;
		data['wareScore'] = this.wareScore;
		data['serviceScore'] = this.serviceScore;
		data['logo'] = this.logo;
		data['avgWareScore'] = this.avgWareScore;
		data['shopId'] = this.shopId;
		data['skuCntText'] = this.skuCntText;
		data['avgEfficiencyScore'] = this.avgEfficiencyScore;
		data['class'] = this.xClass;
		data['promotionNum'] = this.promotionNum;
		data['brief'] = this.brief;
		data['shopImage'] = this.shopImage;
		data['cardType'] = this.cardType;
		data['avgServiceScore'] = this.avgServiceScore;
		data['telephone'] = this.telephone;
		data['goodShop'] = this.goodShop;
		data['nameB'] = this.nameB;
		data['skuText'] = this.skuText;
		data['logisticsText'] = this.logisticsText;
		data['diamond'] = this.diamond;
		data['globalGoodShop'] = this.globalGoodShop;
		data['totalNum'] = this.totalNum;
		data['signboardUrl'] = this.signboardUrl;
		if (this.hotcates != null) {
      data['hotcates'] =  this.hotcates.map((v) => v.toJson()).toList();
    }
		data['shopStateText'] = this.shopStateText;
		data['name'] = this.name;
		data['shopActivityTotalNum'] = this.shopActivityTotalNum;
		data['cateGoodShop'] = this.cateGoodShop;
		data['serverText'] = this.serverText;
		data['efficiencyScore'] = this.efficiencyScore;
		data['squareLogo'] = this.squareLogo;
		data['newNum'] = this.newNum;
		data['hotcatestr'] = this.hotcatestr;
		data['venderType'] = this.venderType;
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

class ItemInfoResponseFloorsDataShopinfoCustomerservice {
	bool hasChat;
	bool hasJimi;
	String allGoodJumpUrl;
	String mLink;
	bool online;
	String inShopLookJumpUrl;
	ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo chatInfo;

	ItemInfoResponseFloorsDataShopinfoCustomerservice({this.hasChat, this.hasJimi, this.allGoodJumpUrl, this.mLink, this.online, this.inShopLookJumpUrl, this.chatInfo});

	ItemInfoResponseFloorsDataShopinfoCustomerservice.fromJson(Map<String, dynamic> json) {
		hasChat = json['hasChat'];
		hasJimi = json['hasJimi'];
		allGoodJumpUrl = json['allGoodJumpUrl'];
		mLink = json['mLink'];
		online = json['online'];
		inShopLookJumpUrl = json['inShopLookJumpUrl'];
		chatInfo = json['chatInfo'] != null ? new ItemInfoResponseFloorsDataShopinfoCustomerserviceChatinfo.fromJson(json['chatInfo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hasChat'] = this.hasChat;
		data['hasJimi'] = this.hasJimi;
		data['allGoodJumpUrl'] = this.allGoodJumpUrl;
		data['mLink'] = this.mLink;
		data['online'] = this.online;
		data['inShopLookJumpUrl'] = this.inShopLookJumpUrl;
		if (this.chatInfo != null) {
      data['chatInfo'] = this.chatInfo.toJson();
    }
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

class ItemInfoResponseFloorsDataPointinfo {
	bool isShowAr;
	int isOPType;
	String discountPrice;
	String trustworthy;
	String aRType;

	ItemInfoResponseFloorsDataPointinfo({this.isShowAr, this.isOPType, this.discountPrice, this.trustworthy, this.aRType});

	ItemInfoResponseFloorsDataPointinfo.fromJson(Map<String, dynamic> json) {
		isShowAr = json['isShowAr'];
		isOPType = json['isOPType'];
		discountPrice = json['discountPrice'];
		trustworthy = json['trustworthy'];
		aRType = json['ARType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isShowAr'] = this.isShowAr;
		data['isOPType'] = this.isOPType;
		data['discountPrice'] = this.discountPrice;
		data['trustworthy'] = this.trustworthy;
		data['ARType'] = this.aRType;
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

class ItemInfoResponseFloorsDataShareimginfo {
	String priceDes;
	String promotionStr;
	String shareLanguage;
	String jprice;

	ItemInfoResponseFloorsDataShareimginfo({this.priceDes, this.promotionStr, this.shareLanguage, this.jprice});

	ItemInfoResponseFloorsDataShareimginfo.fromJson(Map<String, dynamic> json) {
		priceDes = json['priceDes'];
		promotionStr = json['promotionStr'];
		shareLanguage = json['shareLanguage'];
		jprice = json['jprice'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['priceDes'] = this.priceDes;
		data['promotionStr'] = this.promotionStr;
		data['shareLanguage'] = this.shareLanguage;
		data['jprice'] = this.jprice;
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
