class CategoryBannerResponseEntity {
	int bannerFrames;
	String code;
	List<CategoryBannerResponseCmspromotionslist> cmsPromotionsList;
	String bannerSource;
	String styleTypeBanner;
	String clientCacheTime2;
	int modified;
	String clientCacheTime3;
	String clientCacheTime1;
	int commonCategoryTimestamp;
	List<Null> cmsMonthCardList;
	String clientCacheTimeFreq;

	CategoryBannerResponseEntity({this.bannerFrames, this.code, this.cmsPromotionsList, this.bannerSource, this.styleTypeBanner, this.clientCacheTime2, this.modified, this.clientCacheTime3, this.clientCacheTime1, this.commonCategoryTimestamp, this.cmsMonthCardList, this.clientCacheTimeFreq});

	CategoryBannerResponseEntity.fromJson(Map<String, dynamic> json) {
		bannerFrames = json['bannerFrames'];
		code = json['code'];
		if (json['cmsPromotionsList'] != null) {
			cmsPromotionsList = new List<CategoryBannerResponseCmspromotionslist>();(json['cmsPromotionsList'] as List).forEach((v) { cmsPromotionsList.add(new CategoryBannerResponseCmspromotionslist.fromJson(v)); });
		}
		bannerSource = json['bannerSource'];
		styleTypeBanner = json['styleTypeBanner'];
		clientCacheTime2 = json['clientCacheTime2'];
		modified = json['modified'];
		clientCacheTime3 = json['clientCacheTime3'];
		clientCacheTime1 = json['clientCacheTime1'];
		commonCategoryTimestamp = json['commonCategoryTimestamp'];
		if (json['cmsMonthCardList'] != null) {
			cmsMonthCardList = new List<Null>();
		}
		clientCacheTimeFreq = json['clientCacheTimeFreq'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bannerFrames'] = this.bannerFrames;
		data['code'] = this.code;
		if (this.cmsPromotionsList != null) {
      data['cmsPromotionsList'] =  this.cmsPromotionsList.map((v) => v.toJson()).toList();
    }
		data['bannerSource'] = this.bannerSource;
		data['styleTypeBanner'] = this.styleTypeBanner;
		data['clientCacheTime2'] = this.clientCacheTime2;
		data['modified'] = this.modified;
		data['clientCacheTime3'] = this.clientCacheTime3;
		data['clientCacheTime1'] = this.clientCacheTime1;
		data['commonCategoryTimestamp'] = this.commonCategoryTimestamp;
		if (this.cmsMonthCardList != null) {
      data['cmsMonthCardList'] =  [];
    }
		data['clientCacheTimeFreq'] = this.clientCacheTimeFreq;
		return data;
	}
}

class CategoryBannerResponseCmspromotionslist {
	String extensionId;
	String imageurlWap;
	int catelogyId;
	String mPageAddress;
	String imageUrl;
	String destination;
	String exposalUrl;
	int promotionId;
	String promotionLogUrl;
	String jumpFlag;
	String type;
	String target;

	CategoryBannerResponseCmspromotionslist({this.extensionId, this.imageurlWap, this.catelogyId, this.mPageAddress, this.imageUrl, this.destination, this.exposalUrl, this.promotionId, this.promotionLogUrl, this.jumpFlag, this.type, this.target});

	CategoryBannerResponseCmspromotionslist.fromJson(Map<String, dynamic> json) {
		extensionId = json['extension_id'];
		imageurlWap = json['imageUrl_wap'];
		catelogyId = json['catelogyId'];
		mPageAddress = json['mPageAddress'];
		imageUrl = json['imageUrl'];
		destination = json['destination'];
		exposalUrl = json['exposalUrl'];
		promotionId = json['promotion_id'];
		promotionLogUrl = json['promotionLogUrl'];
		jumpFlag = json['jumpFlag'];
		type = json['type'];
		target = json['target'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['extension_id'] = this.extensionId;
		data['imageUrl_wap'] = this.imageurlWap;
		data['catelogyId'] = this.catelogyId;
		data['mPageAddress'] = this.mPageAddress;
		data['imageUrl'] = this.imageUrl;
		data['destination'] = this.destination;
		data['exposalUrl'] = this.exposalUrl;
		data['promotion_id'] = this.promotionId;
		data['promotionLogUrl'] = this.promotionLogUrl;
		data['jumpFlag'] = this.jumpFlag;
		data['type'] = this.type;
		data['target'] = this.target;
		return data;
	}
}
