// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Request _$RequestFromJson(Map<String, dynamic> json) {
  return Request(json['code'] as String, json['data']);
}

Map<String, dynamic> _$RequestToJson(Request instance) =>
    <String, dynamic>{'code': instance.code, 'data': instance.data};
