class ShopcartResponseEntity {
	ShopcartResponseCartinfo cartInfo;
	List<ShopcartResponseTabmanus> tabMenus;
	String code;
	String imageDomain;
	int resultCode;
	String userIdentity;

	ShopcartResponseEntity({this.cartInfo, this.tabMenus, this.code, this.imageDomain, this.resultCode, this.userIdentity});

	ShopcartResponseEntity.fromJson(Map<String, dynamic> json) {
		cartInfo = json['cartInfo'] != null ? new ShopcartResponseCartinfo.fromJson(json['cartInfo']) : null;
		if (json['tabMenus'] != null) {
			tabMenus = new List<ShopcartResponseTabmanus>();(json['tabMenus'] as List).forEach((v) { tabMenus.add(new ShopcartResponseTabmanus.fromJson(v)); });
		}
		code = json['code'];
		imageDomain = json['imageDomain'];
		resultCode = json['resultCode'];
		userIdentity = json['userIdentity'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.cartInfo != null) {
      data['cartInfo'] = this.cartInfo.toJson();
    }
		if (this.tabMenus != null) {
      data['tabMenus'] =  this.tabMenus.map((v) => v.toJson()).toList();
    }
		data['code'] = this.code;
		data['imageDomain'] = this.imageDomain;
		data['resultCode'] = this.resultCode;
		data['userIdentity'] = this.userIdentity;
		return data;
	}
}

class ShopcartResponseCartinfo {
	bool isEmpty;
	double rePrice;
	int checkedWareNum;
	int cartAddClearGuide;
	int cartNum;
	int specialId;
	int limitBookNum;
	int isNoCheck;
	int cartClearGuide;
	Map<String, dynamic> abCards;
	int limitWareNum;
	String tip1;
	String tip2;
	List<ShopcartResponseCartinfoVendor> vendors;
	int limitNotBookNum;
	Map<String, dynamic> cartNumGroup;
	int promotionSwitch;
	int checkType;
	bool cartClearShow;
	String configVersion;
	int num;
	int limitCartNum;
	int orderNumLimit;
	String noticeType;
	ShopcartResponseCartinfoPlusinfo plusInfo;
	List<Null> suits;
	int promotionSavePrice;
	List<Null> skus;
	double price;
	List<Null> gifts;
	String priceShow;
	int status;

	ShopcartResponseCartinfo({this.isEmpty, this.rePrice, this.checkedWareNum, this.cartAddClearGuide, this.cartNum, this.specialId, this.limitBookNum, this.isNoCheck, this.cartClearGuide, this.abCards, this.limitWareNum, this.tip1, this.tip2, this.vendors, this.limitNotBookNum, this.cartNumGroup, this.promotionSwitch, this.checkType, this.cartClearShow, this.configVersion, this.num, this.limitCartNum, this.orderNumLimit, this.noticeType, this.plusInfo, this.suits, this.promotionSavePrice, this.skus, this.price, this.gifts, this.priceShow, this.status});

	ShopcartResponseCartinfo.fromJson(Map<String, dynamic> json) {
		isEmpty = json['IsEmpty'];
		rePrice = json['RePrice'];
		checkedWareNum = json['checkedWareNum'];
		cartAddClearGuide = json['cartAddClearGuide'];
		cartNum = json['cartNum'];
		specialId = json['specialId'];
		limitBookNum = json['limitBookNum'];
		isNoCheck = json['isNoCheck'];
		cartClearGuide = json['cartClearGuide'];
		abCards = json['abCards'];
		limitWareNum = json['limitWareNum'];
		tip1 = json['tip_1'];
		tip2 = json['tip_2'];
		if (json['vendors'] != null) {
			vendors = new List<ShopcartResponseCartinfoVendor>();(json['vendors'] as List).forEach((v) { vendors.add(new ShopcartResponseCartinfoVendor.fromJson(v)); });
		}
		limitNotBookNum = json['limitNotBookNum'];
		cartNumGroup = json['cartNumGroup'];
		promotionSwitch = json['promotionSwitch'];
		checkType = json['checkType'];
		cartClearShow = json['cartClearShow'];
		configVersion = json['configVersion'];
		num = json['Num'];
		limitCartNum = json['limitCartNum'];
		orderNumLimit = json['orderNumLimit'];
		noticeType = json['noticeType'];
		plusInfo = json['plusInfo'] != null ? new ShopcartResponseCartinfoPlusinfo.fromJson(json['plusInfo']) : null;
		if (json['Suits'] != null) {
			suits = new List<Null>();
		}
		promotionSavePrice = json['promotionSavePrice'];
		if (json['Skus'] != null) {
			skus = new List<Null>();
		}
		price = json['Price'];
		if (json['Gifts'] != null) {
			gifts = new List<Null>();
		}
		priceShow = json['PriceShow'];
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['IsEmpty'] = this.isEmpty;
		data['RePrice'] = this.rePrice;
		data['checkedWareNum'] = this.checkedWareNum;
		data['cartAddClearGuide'] = this.cartAddClearGuide;
		data['cartNum'] = this.cartNum;
		data['specialId'] = this.specialId;
		data['limitBookNum'] = this.limitBookNum;
		data['isNoCheck'] = this.isNoCheck;
		data['cartClearGuide'] = this.cartClearGuide;
    data['abCards'] = this.abCards;
		data['limitWareNum'] = this.limitWareNum;
		data['tip_1'] = this.tip1;
		data['tip_2'] = this.tip2;
		if (this.vendors != null) {
      data['vendors'] =  this.vendors.map((v) => v.toJson()).toList();
    }
		data['limitNotBookNum'] = this.limitNotBookNum;
    data['cartNumGroup'] = this.cartNumGroup;
		data['promotionSwitch'] = this.promotionSwitch;
		data['checkType'] = this.checkType;
		data['cartClearShow'] = this.cartClearShow;
		data['configVersion'] = this.configVersion;
		data['Num'] = this.num;
		data['limitCartNum'] = this.limitCartNum;
		data['orderNumLimit'] = this.orderNumLimit;
		data['noticeType'] = this.noticeType;
		if (this.plusInfo != null) {
      data['plusInfo'] = this.plusInfo.toJson();
    }
		if (this.suits != null) {
      data['Suits'] =  [];
    }
		data['promotionSavePrice'] = this.promotionSavePrice;
		if (this.skus != null) {
      data['Skus'] =  [];
    }
		data['Price'] = this.price;
		if (this.gifts != null) {
      data['Gifts'] =  [];
    }
		data['PriceShow'] = this.priceShow;
		data['status'] = this.status;
		return data;
	}
}


class ShopcartResponseCartinfoVendor {
	int vendorType;
	int checkType;
	ShopcartResponseCartinfoVendorsVendorlabels vendorLabels;
	int vendorId;
	String shopName;
	int specialId;
	List<ShopcartResponseCartinfoVendorsSorted> sorted;
	int isNoCheck;
	ShopcartResponseCartinfoVendorsFaremap fareMap;
	int shopId;
	double vendorPrice;
	int fareType;
	String shopMsg;

	ShopcartResponseCartinfoVendor({this.vendorType, this.checkType, this.vendorLabels, this.vendorId, this.shopName, this.specialId, this.sorted, this.isNoCheck, this.fareMap, this.shopId, this.vendorPrice, this.fareType, this.shopMsg});

	ShopcartResponseCartinfoVendor.fromJson(Map<String, dynamic> json) {
		vendorType = json['vendorType'];
		checkType = json['checkType'];
		vendorLabels = json['vendorLabels'] != null ? new ShopcartResponseCartinfoVendorsVendorlabels.fromJson(json['vendorLabels']) : null;
		vendorId = json['vendorId'];
		shopName = json['shopName'];
		specialId = json['specialId'];
		if (json['sorted'] != null) {
			sorted = new List<ShopcartResponseCartinfoVendorsSorted>();(json['sorted'] as List).forEach((v) { sorted.add(new ShopcartResponseCartinfoVendorsSorted.fromJson(v)); });
		}
		isNoCheck = json['isNoCheck'];
		fareMap = json['fareMap'] != null ? new ShopcartResponseCartinfoVendorsFaremap.fromJson(json['fareMap']) : null;
		shopId = json['shopId'];
		vendorPrice = json['vendorPrice'];
		fareType = json['fareType'];
		shopMsg = json['shopMsg'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['vendorType'] = this.vendorType;
		data['checkType'] = this.checkType;
		if (this.vendorLabels != null) {
      data['vendorLabels'] = this.vendorLabels.toJson();
    }
		data['vendorId'] = this.vendorId;
		data['shopName'] = this.shopName;
		data['specialId'] = this.specialId;
		if (this.sorted != null) {
      data['sorted'] =  this.sorted.map((v) => v.toJson()).toList();
    }
		data['isNoCheck'] = this.isNoCheck;
		if (this.fareMap != null) {
      data['fareMap'] = this.fareMap.toJson();
    }
		data['shopId'] = this.shopId;
		data['vendorPrice'] = this.vendorPrice;
		data['fareType'] = this.fareType;
		data['shopMsg'] = this.shopMsg;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsVendorlabels {
	List<ShopcartResponseCartinfoVendorsVendorlabelsVendorhead> vendorHead;

	ShopcartResponseCartinfoVendorsVendorlabels({this.vendorHead});

	ShopcartResponseCartinfoVendorsVendorlabels.fromJson(Map<String, dynamic> json) {
		if (json['vendorHead'] != null) {
			vendorHead = new List<ShopcartResponseCartinfoVendorsVendorlabelsVendorhead>();(json['vendorHead'] as List).forEach((v) { vendorHead.add(new ShopcartResponseCartinfoVendorsVendorlabelsVendorhead.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.vendorHead != null) {
      data['vendorHead'] =  this.vendorHead.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ShopcartResponseCartinfoVendorsVendorlabelsVendorhead {
	String u;

	ShopcartResponseCartinfoVendorsVendorlabelsVendorhead({this.u});

	ShopcartResponseCartinfoVendorsVendorlabelsVendorhead.fromJson(Map<String, dynamic> json) {
		u = json['u'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['u'] = this.u;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSorted {
	int itemType;
	ShopcartResponseCartinfoVendorsSortedItem item;

	ShopcartResponseCartinfoVendorsSorted({this.itemType, this.item});

	ShopcartResponseCartinfoVendorsSorted.fromJson(Map<String, dynamic> json) {
		itemType = json['itemType'];
		item = json['item'] != null ? new ShopcartResponseCartinfoVendorsSortedItem.fromJson(json['item']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['itemType'] = this.itemType;
		if (this.item != null) {
      data['item'] = this.item.toJson();
    }
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItem {
	double rePrice;
	String suitLabel;
	List<ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo> homeServiceInfo;
	int vendorId;
	int maxNum;
	String imgUrl;
	double addMoney;
	String promotionId;
	int overseaPurchase;
	String name;
	bool isBook;
	String stockState;
	List<ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion> canSelectPromotions;
	int sType;
	int isNoCheck;
	int remainNumInt;
	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummary floorInfoSummary;
	List<Null> tags;
	int notComputeStock;
	String remainNum;
	int targetId;
	List<Null> canSelectGifts;
	String weight;
	int stockCode;
	double needMoney;
	List<Null> skus;
	double price;
	ShopcartResponseCartinfoVendorsSortedItemSkulabels skuLabels;
	int isProvideService;
	String imageUrlRN;
	List<Null> canSelectPrices;
	int brandId;
	int secKillEndCountdown;
	List<ShopcartResponseCartinfoVendorsSortedItemGift> gifts;
	String menuRelationTag;
	dynamic id;
	Map<String, dynamic> fields;
	List<ShopcartResponseCartinfoVendorsSorted> items;
	int cid;
	double discount;
	int fullRefundType;
	String stillNeed;
	int idForOldVersion;
	String specialId;
	List<ShopcartResponseCartinfoVendorsSortedItemYbsku> ybSkus;
	int firstCid;
	String unitedText;
	bool isReachCondition;
	bool isYb;
	int notComputeFreight;
	String entryLabel;
	int num;
	String priceImg;
	int secondCid;
	int point;
	int hasUnitedText;
	int awardType;
	String sTip;
	int suitType;
	int cardSpecialId;
	int checkType;
	ShopcartResponseCartinfoVendorsSortedItemPropertytags propertyTags;
	String priceShow;
	String priceRevert;

	ShopcartResponseCartinfoVendorsSortedItem({this.rePrice, this.suitLabel, this.homeServiceInfo, this.vendorId, this.maxNum, this.imgUrl, this.addMoney, this.promotionId, this.overseaPurchase, this.name, this.isBook, this.stockState, this.canSelectPromotions, this.sType, this.isNoCheck, this.remainNumInt, this.floorInfoSummary, this.tags, this.notComputeStock, this.remainNum, this.targetId, this.canSelectGifts, this.weight, this.stockCode, this.needMoney, this.skus, this.price, this.skuLabels, this.isProvideService, this.imageUrlRN, this.canSelectPrices, this.brandId, this.secKillEndCountdown, this.gifts, this.menuRelationTag, this.id, this.fields, this.items, this.cid, this.discount, this.fullRefundType, this.stillNeed, this.idForOldVersion, this.specialId, this.ybSkus, this.firstCid, this.unitedText, this.isReachCondition, this.isYb, this.notComputeFreight, this.entryLabel, this.num, this.priceImg, this.secondCid, this.point, this.hasUnitedText, this.awardType, this.sTip, this.suitType, this.cardSpecialId, this.checkType, this.propertyTags, this.priceShow, this.priceRevert});

	ShopcartResponseCartinfoVendorsSortedItem.fromJson(Map<String, dynamic> json) {
		rePrice = json['RePrice'];
		suitLabel = json['suitLabel'];
		if (json['homeServiceInfo'] != null) {
			homeServiceInfo = new List<ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo>();(json['homeServiceInfo'] as List).forEach((v) { homeServiceInfo.add(new ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo.fromJson(v)); });
		}
		vendorId = json['vendorId'];
		maxNum = json['maxNum'];
		imgUrl = json['ImgUrl'];
		addMoney = json['AddMoney'];
		promotionId = json['promotionId'];
		overseaPurchase = json['overseaPurchase'];
		name = json['Name'];
		isBook = json['isBook'];
		stockState = json['stockState'];
		if (json['canSelectPromotions'] != null) {
			canSelectPromotions = new List<ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion>();(json['canSelectPromotions'] as List).forEach((v) { canSelectPromotions.add(new ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion.fromJson(v)); });
		}
		sType = json['SType'];
		isNoCheck = json['isNoCheck'];
		remainNumInt = json['remainNumInt'];
		floorInfoSummary = json['floorInfoSummary'] != null ? new ShopcartResponseCartinfoVendorsSortedItemFloorinfosummary.fromJson(json['floorInfoSummary']) : null;
		if (json['Tags'] != null) {
			tags = new List<Null>();
		}
		notComputeStock = json['notComputeStock'];
		remainNum = json['remainNum'];
		targetId = json['targetId'];
		if (json['CanSelectGifts'] != null) {
			canSelectGifts = new List<Null>();
		}
		weight = json['weight'];
		stockCode = json['stockCode'];
		needMoney = json['NeedMoney'];
		if (json['Skus'] != null) {
			skus = new List<Null>();
		}
		price = json['Price'];
		skuLabels = json['skuLabels'] != null ? new ShopcartResponseCartinfoVendorsSortedItemSkulabels.fromJson(json['skuLabels']) : null;
		isProvideService = json['isProvideService'];
		imageUrlRN = json['ImageUrlRN'];
		if (json['canSelectPrices'] != null) {
			canSelectPrices = new List<Null>();
		}
		brandId = json['brandId'];
		secKillEndCountdown = json['secKillEndCountdown'];
		if (json['Gifts'] != null) {
			gifts = new List<ShopcartResponseCartinfoVendorsSortedItemGift>();(json['Gifts'] as List).forEach((v) { gifts.add(new ShopcartResponseCartinfoVendorsSortedItemGift.fromJson(v)); });
		}
		menuRelationTag = json['menuRelationTag'];
		id = json['Id'];
		fields = json['fields'];
		if (json['items'] != null) {
			items = new List<ShopcartResponseCartinfoVendorsSorted>();(json['items'] as List).forEach((v) { items.add(new ShopcartResponseCartinfoVendorsSorted.fromJson(v)); });
		}
		cid = json['cid'];
		discount = json['Discount'];
		fullRefundType = json['fullRefundType'];
		stillNeed = json['stillNeed'];
		idForOldVersion = json['IdForOldVersion'];
		specialId = json['specialId'];
		if (json['YbSkus'] != null) {
			ybSkus = new List<ShopcartResponseCartinfoVendorsSortedItemYbsku>();(json['YbSkus'] as List).forEach((v) { ybSkus.add(new ShopcartResponseCartinfoVendorsSortedItemYbsku.fromJson(v)); });
		}
		firstCid = json['firstCid'];
		unitedText = json['unitedText'];
		isReachCondition = json['isReachCondition'];
		isYb = json['isYb'];
		notComputeFreight = json['notComputeFreight'];
		entryLabel = json['entryLabel'];
		num = json['Num'];
		priceImg = json['PriceImg'];
		secondCid = json['secondCid'];
		point = json['Point'];
		hasUnitedText = json['hasUnitedText'];
		awardType = json['AwardType'];
		sTip = json['STip'];
		suitType = json['suitType'];
		cardSpecialId = json['cardSpecialId'];
		checkType = json['CheckType'];
		propertyTags = json['propertyTags'] != null ? new ShopcartResponseCartinfoVendorsSortedItemPropertytags.fromJson(json['propertyTags']) : null;
		priceShow = json['PriceShow'];
		priceRevert = json['priceRevert'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['RePrice'] = this.rePrice;
		data['suitLabel'] = this.suitLabel;
		if (this.homeServiceInfo != null) {
      data['homeServiceInfo'] =  this.homeServiceInfo.map((v) => v.toJson()).toList();
    }
		data['vendorId'] = this.vendorId;
		data['maxNum'] = this.maxNum;
		data['ImgUrl'] = this.imgUrl;
		data['AddMoney'] = this.addMoney;
		data['promotionId'] = this.promotionId;
		data['overseaPurchase'] = this.overseaPurchase;
		data['Name'] = this.name;
		data['isBook'] = this.isBook;
		data['stockState'] = this.stockState;
		if (this.canSelectPromotions != null) {
      data['canSelectPromotions'] =  this.canSelectPromotions.map((v) => v.toJson()).toList();
    }
		data['SType'] = this.sType;
		data['isNoCheck'] = this.isNoCheck;
		data['remainNumInt'] = this.remainNumInt;
		if (this.floorInfoSummary != null) {
      data['floorInfoSummary'] = this.floorInfoSummary.toJson();
    }
		if (this.tags != null) {
      data['Tags'] =  [];
    }
		data['notComputeStock'] = this.notComputeStock;
		data['remainNum'] = this.remainNum;
		data['targetId'] = this.targetId;
		if (this.canSelectGifts != null) {
      data['CanSelectGifts'] =  [];
    }
		data['weight'] = this.weight;
		data['stockCode'] = this.stockCode;
		data['NeedMoney'] = this.needMoney;
		if (this.skus != null) {
      data['Skus'] =  [];
    }
		data['Price'] = this.price;
		if (this.skuLabels != null) {
      data['skuLabels'] = this.skuLabels.toJson();
    }
		data['isProvideService'] = this.isProvideService;
		data['ImageUrlRN'] = this.imageUrlRN;
		if (this.canSelectPrices != null) {
      data['canSelectPrices'] =  [];
    }
		data['brandId'] = this.brandId;
		data['secKillEndCountdown'] = this.secKillEndCountdown;
		if (this.gifts != null) {
      data['Gifts'] =  this.gifts.map((v) => v.toJson()).toList();
    }
		data['menuRelationTag'] = this.menuRelationTag;
		data['Id'] = this.id;
    data['fields'] = this.fields;
		if (this.items != null) {
      data['items'] =  this.items;
    }
		data['cid'] = this.cid;
		data['Discount'] = this.discount;
		data['fullRefundType'] = this.fullRefundType;
		data['stillNeed'] = this.stillNeed;
		data['IdForOldVersion'] = this.idForOldVersion;
		data['specialId'] = this.specialId;
		if (this.ybSkus != null) {
      data['YbSkus'] =  this.ybSkus.map((v) => v.toJson()).toList();
    }
		data['firstCid'] = this.firstCid;
		data['unitedText'] = this.unitedText;
		data['isReachCondition'] = this.isReachCondition;
		data['isYb'] = this.isYb;
		data['notComputeFreight'] = this.notComputeFreight;
		data['entryLabel'] = this.entryLabel;
		data['Num'] = this.num;
		data['PriceImg'] = this.priceImg;
		data['secondCid'] = this.secondCid;
		data['Point'] = this.point;
		data['hasUnitedText'] = this.hasUnitedText;
		data['AwardType'] = this.awardType;
		data['STip'] = this.sTip;
		data['suitType'] = this.suitType;
		data['cardSpecialId'] = this.cardSpecialId;
		data['CheckType'] = this.checkType;
		if (this.propertyTags != null) {
      data['propertyTags'] = this.propertyTags.toJson();
    }
		data['PriceShow'] = this.priceShow;
		data['priceRevert'] = this.priceRevert;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo {
	double discount;
	double rePrice;
	int vendorId;
	int maxNum;
	int idForOldVersion;
	String imgUrl;
	int overseaPurchase;
	String name;
	bool isBook;
	List<Null> canSelectPromotions;
	int firstCid;
	List<Null> tags;
	int notComputeStock;
	bool isYb;
	int notComputeFreight;
	int targetId;
	int num;
	String priceImg;
	int secondCid;
	int point;
	int hasUnitedText;
	int awardType;
	int stockCode;
	int cardSpecialId;
	int isProvideService;
	double price;
	String imageUrlRN;
	ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfoPropertytags propertyTags;
	int checkType;
	List<Null> canSelectPrices;
	List<Null> gifts;
	String id;
	String priceShow;
	String priceRevert;
	int cid;

	ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo({this.discount, this.rePrice, this.vendorId, this.maxNum, this.idForOldVersion, this.imgUrl, this.overseaPurchase, this.name, this.isBook, this.canSelectPromotions, this.firstCid, this.tags, this.notComputeStock, this.isYb, this.notComputeFreight, this.targetId, this.num, this.priceImg, this.secondCid, this.point, this.hasUnitedText, this.awardType, this.stockCode, this.cardSpecialId, this.isProvideService, this.price, this.imageUrlRN, this.propertyTags, this.checkType, this.canSelectPrices, this.gifts, this.id, this.priceShow, this.priceRevert, this.cid});

	ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfo.fromJson(Map<String, dynamic> json) {
		discount = json['Discount'];
		rePrice = json['RePrice'];
		vendorId = json['vendorId'];
		maxNum = json['maxNum'];
		idForOldVersion = json['IdForOldVersion'];
		imgUrl = json['ImgUrl'];
		overseaPurchase = json['overseaPurchase'];
		name = json['Name'];
		isBook = json['isBook'];
		if (json['canSelectPromotions'] != null) {
			canSelectPromotions = new List<Null>();
		}
		firstCid = json['firstCid'];
		if (json['Tags'] != null) {
			tags = new List<Null>();
		}
		notComputeStock = json['notComputeStock'];
		isYb = json['isYb'];
		notComputeFreight = json['notComputeFreight'];
		targetId = json['targetId'];
		num = json['Num'];
		priceImg = json['PriceImg'];
		secondCid = json['secondCid'];
		point = json['Point'];
		hasUnitedText = json['hasUnitedText'];
		awardType = json['AwardType'];
		stockCode = json['stockCode'];
		cardSpecialId = json['cardSpecialId'];
		isProvideService = json['isProvideService'];
		price = json['Price'];
		imageUrlRN = json['ImageUrlRN'];
		propertyTags = json['propertyTags'] != null ? new ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfoPropertytags.fromJson(json['propertyTags']) : null;
		checkType = json['CheckType'];
		if (json['canSelectPrices'] != null) {
			canSelectPrices = new List<Null>();
		}
		if (json['Gifts'] != null) {
			gifts = new List<Null>();
		}
		id = json['Id'];
		priceShow = json['PriceShow'];
		priceRevert = json['priceRevert'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Discount'] = this.discount;
		data['RePrice'] = this.rePrice;
		data['vendorId'] = this.vendorId;
		data['maxNum'] = this.maxNum;
		data['IdForOldVersion'] = this.idForOldVersion;
		data['ImgUrl'] = this.imgUrl;
		data['overseaPurchase'] = this.overseaPurchase;
		data['Name'] = this.name;
		data['isBook'] = this.isBook;
		if (this.canSelectPromotions != null) {
      data['canSelectPromotions'] =  [];
    }
		data['firstCid'] = this.firstCid;
		if (this.tags != null) {
      data['Tags'] =  [];
    }
		data['notComputeStock'] = this.notComputeStock;
		data['isYb'] = this.isYb;
		data['notComputeFreight'] = this.notComputeFreight;
		data['targetId'] = this.targetId;
		data['Num'] = this.num;
		data['PriceImg'] = this.priceImg;
		data['secondCid'] = this.secondCid;
		data['Point'] = this.point;
		data['hasUnitedText'] = this.hasUnitedText;
		data['AwardType'] = this.awardType;
		data['stockCode'] = this.stockCode;
		data['cardSpecialId'] = this.cardSpecialId;
		data['isProvideService'] = this.isProvideService;
		data['Price'] = this.price;
		data['ImageUrlRN'] = this.imageUrlRN;
		if (this.propertyTags != null) {
      data['propertyTags'] = this.propertyTags.toJson();
    }
		data['CheckType'] = this.checkType;
		if (this.canSelectPrices != null) {
      data['canSelectPrices'] =  [];
    }
		if (this.gifts != null) {
      data['Gifts'] =  [];
    }
		data['Id'] = this.id;
		data['PriceShow'] = this.priceShow;
		data['priceRevert'] = this.priceRevert;
		data['cid'] = this.cid;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfoPropertytags {
	String a;
	String b;
	String c;

	ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfoPropertytags({this.a, this.b, this.c});

	ShopcartResponseCartinfoVendorsSortedItemHomeserviceinfoPropertytags.fromJson(Map<String, dynamic> json) {
		a = json['a'];
		b = json['b'];
		c = json['c'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['a'] = this.a;
		data['b'] = this.b;
		data['c'] = this.c;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion {
	int checkType;
	int id;
	String title;
	int type;

	ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion({this.checkType, this.id, this.title, this.type});

	ShopcartResponseCartinfoVendorsSortedItemCanselectpromotion.fromJson(Map<String, dynamic> json) {
		checkType = json['checkType'];
		id = json['id'];
		title = json['title'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['checkType'] = this.checkType;
		data['id'] = this.id;
		data['title'] = this.title;
		data['type'] = this.type;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemFloorinfosummary {
	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummaryService service;

	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummary({this.service});

	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummary.fromJson(Map<String, dynamic> json) {
		service = json['service'] != null ? new ShopcartResponseCartinfoVendorsSortedItemFloorinfosummaryService.fromJson(json['service']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.service != null) {
      data['service'] = this.service.toJson();
    }
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemFloorinfosummaryService {
	String price;
	int num;
	int invalidNums;

	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummaryService({this.price, this.num, this.invalidNums});

	ShopcartResponseCartinfoVendorsSortedItemFloorinfosummaryService.fromJson(Map<String, dynamic> json) {
		price = json['price'];
		num = json['num'];
		invalidNums = json['invalidNums'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['price'] = this.price;
		data['num'] = this.num;
		data['invalidNums'] = this.invalidNums;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemSkulabels {
	List<ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop> priceTop;
	List<ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead> skuHead;

	ShopcartResponseCartinfoVendorsSortedItemSkulabels({this.priceTop, this.skuHead});

	ShopcartResponseCartinfoVendorsSortedItemSkulabels.fromJson(Map<String, dynamic> json) {
		if (json['priceTop'] != null) {
			priceTop = new List<ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop>();(json['priceTop'] as List).forEach((v) { priceTop.add(new ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop.fromJson(v)); });
		}
		if (json['skuHead'] != null) {
			skuHead = new List<ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead>();(json['skuHead'] as List).forEach((v) { skuHead.add(new ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.priceTop != null) {
      data['priceTop'] =  this.priceTop.map((v) => v.toJson()).toList();
    }
		if (this.skuHead != null) {
      data['skuHead'] =  this.skuHead.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop {
	int s;
	String t;
	String u;

	ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop({this.s, this.t, this.u});

	ShopcartResponseCartinfoVendorsSortedItemSkulabelsPricetop.fromJson(Map<String, dynamic> json) {
		s = json['s'];
		t = json['t'];
		u = json['u'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['s'] = this.s;
		data['t'] = this.t;
		data['u'] = this.u;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead {
	String u;

	ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead({this.u});

	ShopcartResponseCartinfoVendorsSortedItemSkulabelsSkuhead.fromJson(Map<String, dynamic> json) {
		u = json['u'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['u'] = this.u;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemGift {
	bool isYb;
	double discount;
	double rePrice;
	int notComputeFreight;
	int targetId;
	int num;
	int vendorId;
	int hasUnitedText;
	int awardType;
	int stockCode;
	int overseaPurchase;
	String name;
	bool isBook;
	List<Null> canSelectPromotions;
	int cardSpecialId;
	int isProvideService;
	double price;
	List<Null> canSelectPrices;
	List<Null> gifts;
	List<Null> tags;
	int notComputeStock;

	ShopcartResponseCartinfoVendorsSortedItemGift({this.isYb, this.discount, this.rePrice, this.notComputeFreight, this.targetId, this.num, this.vendorId, this.hasUnitedText, this.awardType, this.stockCode, this.overseaPurchase, this.name, this.isBook, this.canSelectPromotions, this.cardSpecialId, this.isProvideService, this.price, this.canSelectPrices, this.gifts, this.tags, this.notComputeStock});

	ShopcartResponseCartinfoVendorsSortedItemGift.fromJson(Map<String, dynamic> json) {
		isYb = json['isYb'];
		discount = json['Discount'];
		rePrice = json['RePrice'];
		notComputeFreight = json['notComputeFreight'];
		targetId = json['targetId'];
		num = json['Num'];
		vendorId = json['vendorId'];
		hasUnitedText = json['hasUnitedText'];
		awardType = json['AwardType'];
		stockCode = json['stockCode'];
		overseaPurchase = json['overseaPurchase'];
		name = json['Name'];
		isBook = json['isBook'];
		if (json['canSelectPromotions'] != null) {
			canSelectPromotions = new List<Null>();
		}
		cardSpecialId = json['cardSpecialId'];
		isProvideService = json['isProvideService'];
		price = json['Price'];
		if (json['canSelectPrices'] != null) {
			canSelectPrices = new List<Null>();
		}
		if (json['Gifts'] != null) {
			gifts = new List<Null>();
		}
		if (json['Tags'] != null) {
			tags = new List<Null>();
		}
		notComputeStock = json['notComputeStock'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isYb'] = this.isYb;
		data['Discount'] = this.discount;
		data['RePrice'] = this.rePrice;
		data['notComputeFreight'] = this.notComputeFreight;
		data['targetId'] = this.targetId;
		data['Num'] = this.num;
		data['vendorId'] = this.vendorId;
		data['hasUnitedText'] = this.hasUnitedText;
		data['AwardType'] = this.awardType;
		data['stockCode'] = this.stockCode;
		data['overseaPurchase'] = this.overseaPurchase;
		data['Name'] = this.name;
		data['isBook'] = this.isBook;
		if (this.canSelectPromotions != null) {
      data['canSelectPromotions'] =  [];
    }
		data['cardSpecialId'] = this.cardSpecialId;
		data['isProvideService'] = this.isProvideService;
		data['Price'] = this.price;
		if (this.canSelectPrices != null) {
      data['canSelectPrices'] =  [];
    }
		if (this.gifts != null) {
      data['Gifts'] =  [];
    }
		if (this.tags != null) {
      data['Tags'] =  [];
    }
		data['notComputeStock'] = this.notComputeStock;
		return data;
	}
}


class ShopcartResponseCartinfoVendorsSortedItemYbsku {
	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybsku mainYbSku;
	String rWid;
	String rSuitId;

	ShopcartResponseCartinfoVendorsSortedItemYbsku({this.mainYbSku, this.rWid, this.rSuitId});

	ShopcartResponseCartinfoVendorsSortedItemYbsku.fromJson(Map<String, dynamic> json) {
		mainYbSku = json['MainYbSku'] != null ? new ShopcartResponseCartinfoVendorsSortedItemYbskusMainybsku.fromJson(json['MainYbSku']) : null;
		rWid = json['RWid'];
		rSuitId = json['RSuitId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.mainYbSku != null) {
      data['MainYbSku'] = this.mainYbSku.toJson();
    }
		data['RWid'] = this.rWid;
		data['RSuitId'] = this.rSuitId;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemYbskusMainybsku {
	double discount;
	double rePrice;
	int vendorId;
	int maxNum;
	int idForOldVersion;
	String imgUrl;
	int overseaPurchase;
	String name;
	bool isBook;
	List<Null> canSelectPromotions;
	int firstCid;
	List<Null> tags;
	int notComputeStock;
	bool isYb;
	int notComputeFreight;
	int targetId;
	int num;
	String priceImg;
	int secondCid;
	int point;
	int hasUnitedText;
	int awardType;
	int stockCode;
	int cardSpecialId;
	int isProvideService;
	double price;
	String imageUrlRN;
	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybskuPropertytags propertyTags;
	int checkType;
	List<Null> canSelectPrices;
	List<Null> gifts;
	String id;
	String priceShow;
	String priceRevert;
	int cid;

	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybsku({this.discount, this.rePrice, this.vendorId, this.maxNum, this.idForOldVersion, this.imgUrl, this.overseaPurchase, this.name, this.isBook, this.canSelectPromotions, this.firstCid, this.tags, this.notComputeStock, this.isYb, this.notComputeFreight, this.targetId, this.num, this.priceImg, this.secondCid, this.point, this.hasUnitedText, this.awardType, this.stockCode, this.cardSpecialId, this.isProvideService, this.price, this.imageUrlRN, this.propertyTags, this.checkType, this.canSelectPrices, this.gifts, this.id, this.priceShow, this.priceRevert, this.cid});

	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybsku.fromJson(Map<String, dynamic> json) {
		discount = json['Discount'];
		rePrice = json['RePrice'];
		vendorId = json['vendorId'];
		maxNum = json['maxNum'];
		idForOldVersion = json['IdForOldVersion'];
		imgUrl = json['ImgUrl'];
		overseaPurchase = json['overseaPurchase'];
		name = json['Name'];
		isBook = json['isBook'];
		if (json['canSelectPromotions'] != null) {
			canSelectPromotions = new List<Null>();
		}
		firstCid = json['firstCid'];
		if (json['Tags'] != null) {
			tags = new List<Null>();
		}
		notComputeStock = json['notComputeStock'];
		isYb = json['isYb'];
		notComputeFreight = json['notComputeFreight'];
		targetId = json['targetId'];
		num = json['Num'];
		priceImg = json['PriceImg'];
		secondCid = json['secondCid'];
		point = json['Point'];
		hasUnitedText = json['hasUnitedText'];
		awardType = json['AwardType'];
		stockCode = json['stockCode'];
		cardSpecialId = json['cardSpecialId'];
		isProvideService = json['isProvideService'];
		price = json['Price'];
		imageUrlRN = json['ImageUrlRN'];
		propertyTags = json['propertyTags'] != null ? new ShopcartResponseCartinfoVendorsSortedItemYbskusMainybskuPropertytags.fromJson(json['propertyTags']) : null;
		checkType = json['CheckType'];
		if (json['canSelectPrices'] != null) {
			canSelectPrices = new List<Null>();
		}
		if (json['Gifts'] != null) {
			gifts = new List<Null>();
		}
		id = json['Id'];
		priceShow = json['PriceShow'];
		priceRevert = json['priceRevert'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Discount'] = this.discount;
		data['RePrice'] = this.rePrice;
		data['vendorId'] = this.vendorId;
		data['maxNum'] = this.maxNum;
		data['IdForOldVersion'] = this.idForOldVersion;
		data['ImgUrl'] = this.imgUrl;
		data['overseaPurchase'] = this.overseaPurchase;
		data['Name'] = this.name;
		data['isBook'] = this.isBook;
		if (this.canSelectPromotions != null) {
      data['canSelectPromotions'] =  [];
    }
		data['firstCid'] = this.firstCid;
		if (this.tags != null) {
      data['Tags'] =  [];
    }
		data['notComputeStock'] = this.notComputeStock;
		data['isYb'] = this.isYb;
		data['notComputeFreight'] = this.notComputeFreight;
		data['targetId'] = this.targetId;
		data['Num'] = this.num;
		data['PriceImg'] = this.priceImg;
		data['secondCid'] = this.secondCid;
		data['Point'] = this.point;
		data['hasUnitedText'] = this.hasUnitedText;
		data['AwardType'] = this.awardType;
		data['stockCode'] = this.stockCode;
		data['cardSpecialId'] = this.cardSpecialId;
		data['isProvideService'] = this.isProvideService;
		data['Price'] = this.price;
		data['ImageUrlRN'] = this.imageUrlRN;
		if (this.propertyTags != null) {
      data['propertyTags'] = this.propertyTags.toJson();
    }
		data['CheckType'] = this.checkType;
		if (this.canSelectPrices != null) {
      data['canSelectPrices'] =  [];
    }
		if (this.gifts != null) {
      data['Gifts'] =  [];
    }
		data['Id'] = this.id;
		data['PriceShow'] = this.priceShow;
		data['priceRevert'] = this.priceRevert;
		data['cid'] = this.cid;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemYbskusMainybskuPropertytags {
	String a;
	String b;
	String c;

	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybskuPropertytags({this.a, this.b, this.c});

	ShopcartResponseCartinfoVendorsSortedItemYbskusMainybskuPropertytags.fromJson(Map<String, dynamic> json) {
		a = json['a'];
		b = json['b'];
		c = json['c'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['a'] = this.a;
		data['b'] = this.b;
		data['c'] = this.c;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsSortedItemPropertytags {
	String a;
	String b;
	String c;

	ShopcartResponseCartinfoVendorsSortedItemPropertytags({this.a, this.b, this.c});

	ShopcartResponseCartinfoVendorsSortedItemPropertytags.fromJson(Map<String, dynamic> json) {
		a = json['a'];
		b = json['b'];
		c = json['c'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['a'] = this.a;
		data['b'] = this.b;
		data['c'] = this.c;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsFaremap {
	ShopcartResponseCartinfoVendorsFaremapNormalsku normalSku;

	ShopcartResponseCartinfoVendorsFaremap({this.normalSku});

	ShopcartResponseCartinfoVendorsFaremap.fromJson(Map<String, dynamic> json) {
		normalSku = json['normalSku'] != null ? new ShopcartResponseCartinfoVendorsFaremapNormalsku.fromJson(json['normalSku']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.normalSku != null) {
      data['normalSku'] = this.normalSku.toJson();
    }
		return data;
	}
}

class ShopcartResponseCartinfoVendorsFaremapNormalsku {
	ShopcartResponseCartinfoVendorsFaremapNormalskuCoudanpagemsg coudanPageMsg;
	String price;
	String weight;
	int fareType;
	String weightNeed;

	ShopcartResponseCartinfoVendorsFaremapNormalsku({this.coudanPageMsg, this.price, this.weight, this.fareType, this.weightNeed});

	ShopcartResponseCartinfoVendorsFaremapNormalsku.fromJson(Map<String, dynamic> json) {
		coudanPageMsg = json['coudanPageMsg'] != null ? new ShopcartResponseCartinfoVendorsFaremapNormalskuCoudanpagemsg.fromJson(json['coudanPageMsg']) : null;
		price = json['price'];
		weight = json['weight'];
		fareType = json['fareType'];
		weightNeed = json['weightNeed'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.coudanPageMsg != null) {
      data['coudanPageMsg'] = this.coudanPageMsg.toJson();
    }
		data['price'] = this.price;
		data['weight'] = this.weight;
		data['fareType'] = this.fareType;
		data['weightNeed'] = this.weightNeed;
		return data;
	}
}

class ShopcartResponseCartinfoVendorsFaremapNormalskuCoudanpagemsg {
	String a;
	String b;

	ShopcartResponseCartinfoVendorsFaremapNormalskuCoudanpagemsg({this.a, this.b});

	ShopcartResponseCartinfoVendorsFaremapNormalskuCoudanpagemsg.fromJson(Map<String, dynamic> json) {
		a = json['a'];
		b = json['b'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['a'] = this.a;
		data['b'] = this.b;
		return data;
	}
}


class ShopcartResponseCartinfoPlusinfo {
	String plusAchieveUrl;
	String plusContext;

	ShopcartResponseCartinfoPlusinfo({this.plusAchieveUrl, this.plusContext});

	ShopcartResponseCartinfoPlusinfo.fromJson(Map<String, dynamic> json) {
		plusAchieveUrl = json['plusAchieveUrl'];
		plusContext = json['plusContext'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['plusAchieveUrl'] = this.plusAchieveUrl;
		data['plusContext'] = this.plusContext;
		return data;
	}
}

class ShopcartResponseTabmanus {
	String tabName;
	String itemName;
	int skuNums;
	String menuValue;
	List<ShopcartResponseTabmanusSubtab> subTab;
	int otherSkuNums;

	ShopcartResponseTabmanus({this.tabName, this.itemName, this.skuNums, this.menuValue, this.subTab, this.otherSkuNums});

	ShopcartResponseTabmanus.fromJson(Map<String, dynamic> json) {
		tabName = json['tabName'];
		itemName = json['itemName'];
		skuNums = json['skuNums'];
		menuValue = json['menuValue'];
		if (json['subTab'] != null) {
			subTab = new List<ShopcartResponseTabmanusSubtab>();(json['subTab'] as List).forEach((v) { subTab.add(new ShopcartResponseTabmanusSubtab.fromJson(v)); });
		}
		otherSkuNums = json['otherSkuNums'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tabName'] = this.tabName;
		data['itemName'] = this.itemName;
		data['skuNums'] = this.skuNums;
		data['menuValue'] = this.menuValue;
		if (this.subTab != null) {
      data['subTab'] =  this.subTab.map((v) => v.toJson()).toList();
    }
		data['otherSkuNums'] = this.otherSkuNums;
		return data;
	}
}

class ShopcartResponseTabmanusSubtab {
	String tabName;
	String itemName;
	int skuNums;
	String menuValue;
	int otherSkuNums;

	ShopcartResponseTabmanusSubtab({this.tabName, this.itemName, this.skuNums, this.menuValue, this.otherSkuNums});

	ShopcartResponseTabmanusSubtab.fromJson(Map<String, dynamic> json) {
		tabName = json['tabName'];
		itemName = json['itemName'];
		skuNums = json['skuNums'];
		menuValue = json['menuValue'];
		otherSkuNums = json['otherSkuNums'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tabName'] = this.tabName;
		data['itemName'] = this.itemName;
		data['skuNums'] = this.skuNums;
		data['menuValue'] = this.menuValue;
		data['otherSkuNums'] = this.otherSkuNums;
		return data;
	}
}
