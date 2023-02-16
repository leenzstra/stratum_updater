// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseBase _$$_ResponseBaseFromJson(Map<String, dynamic> json) =>
    _$_ResponseBase(
      message: json['message'] as String,
      result: json['result'] as bool,
      data: json['data'] as Object,
    );

Map<String, dynamic> _$$_ResponseBaseToJson(_$_ResponseBase instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result': instance.result,
      'data': instance.data,
    };
