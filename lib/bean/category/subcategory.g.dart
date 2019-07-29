// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return Subcategory(
      json['code'] as String,
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{'code': instance.code, 'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['isBook'] as bool,
      json['rankingFlag'] as bool,
      (json['catelogyList'] as List)
          ?.map((e) => e == null
              ? null
              : CatelogyList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['columNum'] as int,
      json['icon'] as String,
      json['name'] as String,
      json['special_ui'] as bool,
      json['cid'] as int);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'isBook': instance.isBook,
      'rankingFlag': instance.rankingFlag,
      'catelogyList': instance.catelogyList,
      'columNum': instance.columNum,
      'icon': instance.icon,
      'name': instance.name,
      'special_ui': instance.specialUi,
      'cid': instance.cid
    };

CatelogyList _$CatelogyListFromJson(Map<String, dynamic> json) {
  return CatelogyList(
      json['path'] as String,
      json['isRealid'] as int,
      json['sortKey'] as String,
      json['isMerger'] as bool,
      json['icon'] as String,
      json['name'] as String,
      json['virtualFlag'] as int,
      json['isIndividual'] as bool,
      json['shopId'] as String,
      json['cid'] as int);
}

Map<String, dynamic> _$CatelogyListToJson(CatelogyList instance) =>
    <String, dynamic>{
      'path': instance.path,
      'isRealid': instance.isRealid,
      'sortKey': instance.sortKey,
      'isMerger': instance.isMerger,
      'icon': instance.icon,
      'name': instance.name,
      'virtualFlag': instance.virtualFlag,
      'isIndividual': instance.isIndividual,
      'shopId': instance.shopId,
      'cid': instance.cid
    };
