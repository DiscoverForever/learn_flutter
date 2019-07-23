class CategoryEntity {
	int code;
	CategoryData data;

	CategoryEntity({this.code, this.data});

	CategoryEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? new CategoryData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class CategoryData {
	List<CategoryDataCategory> category;

	CategoryData({this.category});

	CategoryData.fromJson(Map<String, dynamic> json) {
		if (json['category'] != null) {
			category = new List<CategoryDataCategory>();(json['category'] as List).forEach((v) { category.add(new CategoryDataCategory.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.category != null) {
      data['category'] =  this.category.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class CategoryDataCategory {
	String name;
	int id;

	CategoryDataCategory({this.name, this.id});

	CategoryDataCategory.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}
