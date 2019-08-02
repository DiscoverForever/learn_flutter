import 'package:json_annotation/json_annotation.dart';

part 'subcategory.g.dart';

@JsonSerializable()
class Subcategory extends Object {
  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'data')
  List<CategoryWrap> data;

  Subcategory(
    this.code,
    this.data,
  );

  factory Subcategory.fromJson(Map<String, dynamic> srcJson) =>
      _$SubcategoryFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}

@JsonSerializable()
class CategoryWrap extends Object {
  @JsonKey(name: 'isBook')
  bool isBook;

  @JsonKey(name: 'rankingFlag')
  bool rankingFlag;

  @JsonKey(name: 'catelogyList')
  List<Category> catelogyList;

  @JsonKey(name: 'columNum')
  int columNum;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'special_ui')
  bool specialUi;

  @JsonKey(name: 'cid')
  int cid;

  CategoryWrap(
    this.isBook,
    this.rankingFlag,
    this.catelogyList,
    this.columNum,
    this.icon,
    this.name,
    this.specialUi,
    this.cid,
  );

  factory CategoryWrap.fromJson(Map<String, dynamic> srcJson) =>
      _$CategoryWrapFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryWrapToJson(this);
}

@JsonSerializable()
class Category extends Object {
  @JsonKey(name: 'path')
  String path;

  @JsonKey(name: 'isRealid')
  int isRealid;

  @JsonKey(name: 'sortKey')
  String sortKey;

  @JsonKey(name: 'isMerger')
  bool isMerger;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'virtualFlag')
  int virtualFlag;

  @JsonKey(name: 'isIndividual')
  bool isIndividual;

  @JsonKey(name: 'shopId')
  String shopId;

  @JsonKey(name: 'cid')
  int cid;

  Category(
    this.path,
    this.isRealid,
    this.sortKey,
    this.isMerger,
    this.icon,
    this.name,
    this.virtualFlag,
    this.isIndividual,
    this.shopId,
    this.cid,
  );

  factory Category.fromJson(Map<String, dynamic> srcJson) =>
      _$CategoryFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
