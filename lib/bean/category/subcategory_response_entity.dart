class SubcategoryResponseEntity {
	String code;
	List<SubcategoryResponseData> data;

	SubcategoryResponseEntity({this.code, this.data});

	SubcategoryResponseEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['data'] != null) {
			data = new List<SubcategoryResponseData>();(json['data'] as List).forEach((v) { data.add(new SubcategoryResponseData.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class SubcategoryResponseData {
	bool isBook;
	bool rankingFlag;
	String activityUrl;
	List<SubcategoryResponseDataCatelogylist> catelogyList;
	int columNum;
	String icon;
	String name;
	bool specialUi;
	int cid;

	SubcategoryResponseData({this.isBook, this.rankingFlag, this.activityUrl, this.catelogyList, this.columNum, this.icon, this.name, this.specialUi, this.cid});

	SubcategoryResponseData.fromJson(Map<String, dynamic> json) {
		isBook = json['isBook'];
		rankingFlag = json['rankingFlag'];
		activityUrl = json['activityUrl'];
		if (json['catelogyList'] != null) {
			catelogyList = new List<SubcategoryResponseDataCatelogylist>();(json['catelogyList'] as List).forEach((v) { catelogyList.add(new SubcategoryResponseDataCatelogylist.fromJson(v)); });
		}
		columNum = json['columNum'];
		icon = json['icon'];
		name = json['name'];
		specialUi = json['special_ui'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isBook'] = this.isBook;
		data['rankingFlag'] = this.rankingFlag;
		data['activityUrl'] = this.activityUrl;
		if (this.catelogyList != null) {
      data['catelogyList'] =  this.catelogyList.map((v) => v.toJson()).toList();
    }
		data['columNum'] = this.columNum;
		data['icon'] = this.icon;
		data['name'] = this.name;
		data['special_ui'] = this.specialUi;
		data['cid'] = this.cid;
		return data;
	}
}

class SubcategoryResponseDataCatelogylist {
	String path;
	int isRealid;
	String sortKey;
	bool isMerger;
	String icon;
	String name;
	int virtualFlag;
	bool isIndividual;
	String searchKey;
	int cid;

	SubcategoryResponseDataCatelogylist({this.path, this.isRealid, this.sortKey, this.isMerger, this.icon, this.name, this.virtualFlag, this.isIndividual, this.searchKey, this.cid});

	SubcategoryResponseDataCatelogylist.fromJson(Map<String, dynamic> json) {
		path = json['path'];
		isRealid = json['isRealid'];
		sortKey = json['sortKey'];
		isMerger = json['isMerger'];
		icon = json['icon'];
		name = json['name'];
		virtualFlag = json['virtualFlag'];
		isIndividual = json['isIndividual'];
		searchKey = json['searchKey'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['path'] = this.path;
		data['isRealid'] = this.isRealid;
		data['sortKey'] = this.sortKey;
		data['isMerger'] = this.isMerger;
		data['icon'] = this.icon;
		data['name'] = this.name;
		data['virtualFlag'] = this.virtualFlag;
		data['isIndividual'] = this.isIndividual;
		data['searchKey'] = this.searchKey;
		data['cid'] = this.cid;
		return data;
	}
}
