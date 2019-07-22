class Category {
  String code;
  List<Data> data;
  String reshowInterval;

  Category({this.code, this.data, this.reshowInterval});

  Category.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    reshowInterval = json['reshowInterval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['reshowInterval'] = this.reshowInterval;
    return data;
  }
}

class Data {
  List<CatelogyList> catelogyList;
  bool hideClearIcon;
  String name;
  int columNum;
  int cid;

  Data(
      {this.catelogyList,
      this.hideClearIcon,
      this.name,
      this.columNum,
      this.cid});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['catelogyList'] != null) {
      catelogyList = new List<CatelogyList>();
      json['catelogyList'].forEach((v) {
        catelogyList.add(new CatelogyList.fromJson(v));
      });
    }
    hideClearIcon = json['hideClearIcon'];
    name = json['name'];
    columNum = json['columNum'];
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.catelogyList != null) {
      data['catelogyList'] = this.catelogyList.map((v) => v.toJson()).toList();
    }
    data['hideClearIcon'] = this.hideClearIcon;
    data['name'] = this.name;
    data['columNum'] = this.columNum;
    data['cid'] = this.cid;
    return data;
  }
}

class CatelogyList {
  String path;
  int isRealid;
  String sortKey;
  bool isMerger;
  String icon;
  String name;
  int columNum;
  int cid;

  CatelogyList(
      {this.path,
      this.isRealid,
      this.sortKey,
      this.isMerger,
      this.icon,
      this.name,
      this.columNum,
      this.cid});

  CatelogyList.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    isRealid = json['isRealid'];
    sortKey = json['sortKey'];
    isMerger = json['isMerger'];
    icon = json['icon'];
    name = json['name'];
    columNum = json['columNum'];
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
    data['columNum'] = this.columNum;
    data['cid'] = this.cid;
    return data;
  }
}
