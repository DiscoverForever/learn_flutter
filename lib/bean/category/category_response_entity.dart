class CategoryResponseEntity {
	String code;
	List<CategoryResponseCatelogylist> catelogyList;

	CategoryResponseEntity({this.code, this.catelogyList});

	CategoryResponseEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['catelogyList'] != null) {
			catelogyList = new List<CategoryResponseCatelogylist>();(json['catelogyList'] as List).forEach((v) { catelogyList.add(new CategoryResponseCatelogylist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.catelogyList != null) {
      data['catelogyList'] =  this.catelogyList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class CategoryResponseCatelogylist {
	bool showTab;
	int level;
	String name;
	List<CategoryResponseCatelogylistMergecatalog> mergeCatalogs;
	bool isIndividual;
	int cid;

	CategoryResponseCatelogylist({this.showTab, this.level, this.name, this.mergeCatalogs, this.isIndividual, this.cid});

	CategoryResponseCatelogylist.fromJson(Map<String, dynamic> json) {
		showTab = json['showTab'];
		level = json['level'];
		name = json['name'];
		if (json['mergeCatalogs'] != null) {
			mergeCatalogs = new List<CategoryResponseCatelogylistMergecatalog>();(json['mergeCatalogs'] as List).forEach((v) { mergeCatalogs.add(new CategoryResponseCatelogylistMergecatalog.fromJson(v)); });
		}
		isIndividual = json['isIndividual'];
		cid = json['cid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['showTab'] = this.showTab;
		data['level'] = this.level;
		data['name'] = this.name;
		if (this.mergeCatalogs != null) {
      data['mergeCatalogs'] =  this.mergeCatalogs.map((v) => v.toJson()).toList();
    }
		data['isIndividual'] = this.isIndividual;
		data['cid'] = this.cid;
		return data;
	}
}

class CategoryResponseCatelogylistMergecatalog {
	int level;
	String name;
	int id;
	int order;

	CategoryResponseCatelogylistMergecatalog({this.level, this.name, this.id, this.order});

	CategoryResponseCatelogylistMergecatalog.fromJson(Map<String, dynamic> json) {
		level = json['level'];
		name = json['name'];
		id = json['id'];
		order = json['order'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['level'] = this.level;
		data['name'] = this.name;
		data['id'] = this.id;
		data['order'] = this.order;
		return data;
	}
}
