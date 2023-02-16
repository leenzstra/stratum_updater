// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectData _$$_SubjectDataFromJson(Map<String, dynamic> json) =>
    _$_SubjectData(
      sid: json['sid'] as int,
      name: json['name'] as String,
      alias: json['alias'] as String,
      classes:
          (json['classes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SubjectDataToJson(_$_SubjectData instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'name': instance.name,
      'alias': instance.alias,
      'classes': instance.classes,
    };
