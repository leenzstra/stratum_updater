// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LicenseInfo _$$_LicenseInfoFromJson(Map<String, dynamic> json) =>
    _$_LicenseInfo(
      key: json['key'] as String,
      maxUses: json['max_uses'] as int,
      contacts: json['contacts'] as String,
      expiration: DateTime.parse(json['expiration'] as String),
      subjects: (json['subjects_info'] as List<dynamic>)
          .map((e) => SubjectData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LicenseInfoToJson(_$_LicenseInfo instance) =>
    <String, dynamic>{
      'key': instance.key,
      'max_uses': instance.maxUses,
      'contacts': instance.contacts,
      'expiration': instance.expiration.toIso8601String(),
      'subjects_info': instance.subjects,
    };
