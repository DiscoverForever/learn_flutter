import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class Request extends Object {
  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'data')
  dynamic data;

  Request(
    this.code,
    this.data,
  );

  factory Request.fromJson(Map<String, dynamic> srcJson) =>
      _$RequestFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RequestToJson(this);
}
