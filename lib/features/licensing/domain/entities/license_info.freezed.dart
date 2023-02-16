// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LicenseInfo _$LicenseInfoFromJson(Map<String, dynamic> json) {
  return _LicenseInfo.fromJson(json);
}

/// @nodoc
mixin _$LicenseInfo {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_uses')
  int get maxUses => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacts')
  String get contacts => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiration')
  DateTime get expiration => throw _privateConstructorUsedError;
  @JsonKey(name: 'subjects_info')
  List<SubjectData> get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseInfoCopyWith<LicenseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseInfoCopyWith<$Res> {
  factory $LicenseInfoCopyWith(
          LicenseInfo value, $Res Function(LicenseInfo) then) =
      _$LicenseInfoCopyWithImpl<$Res, LicenseInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'max_uses') int maxUses,
      @JsonKey(name: 'contacts') String contacts,
      @JsonKey(name: 'expiration') DateTime expiration,
      @JsonKey(name: 'subjects_info') List<SubjectData> subjects});
}

/// @nodoc
class _$LicenseInfoCopyWithImpl<$Res, $Val extends LicenseInfo>
    implements $LicenseInfoCopyWith<$Res> {
  _$LicenseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? maxUses = null,
    Object? contacts = null,
    Object? expiration = null,
    Object? subjects = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      maxUses: null == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LicenseInfoCopyWith<$Res>
    implements $LicenseInfoCopyWith<$Res> {
  factory _$$_LicenseInfoCopyWith(
          _$_LicenseInfo value, $Res Function(_$_LicenseInfo) then) =
      __$$_LicenseInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'max_uses') int maxUses,
      @JsonKey(name: 'contacts') String contacts,
      @JsonKey(name: 'expiration') DateTime expiration,
      @JsonKey(name: 'subjects_info') List<SubjectData> subjects});
}

/// @nodoc
class __$$_LicenseInfoCopyWithImpl<$Res>
    extends _$LicenseInfoCopyWithImpl<$Res, _$_LicenseInfo>
    implements _$$_LicenseInfoCopyWith<$Res> {
  __$$_LicenseInfoCopyWithImpl(
      _$_LicenseInfo _value, $Res Function(_$_LicenseInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? maxUses = null,
    Object? contacts = null,
    Object? expiration = null,
    Object? subjects = null,
  }) {
    return _then(_$_LicenseInfo(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      maxUses: null == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LicenseInfo implements _LicenseInfo {
  const _$_LicenseInfo(
      {@JsonKey(name: 'key')
          required this.key,
      @JsonKey(name: 'max_uses')
          required this.maxUses,
      @JsonKey(name: 'contacts')
          required this.contacts,
      @JsonKey(name: 'expiration')
          required this.expiration,
      @JsonKey(name: 'subjects_info')
          required final List<SubjectData> subjects})
      : _subjects = subjects;

  factory _$_LicenseInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LicenseInfoFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'max_uses')
  final int maxUses;
  @override
  @JsonKey(name: 'contacts')
  final String contacts;
  @override
  @JsonKey(name: 'expiration')
  final DateTime expiration;
  final List<SubjectData> _subjects;
  @override
  @JsonKey(name: 'subjects_info')
  List<SubjectData> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'LicenseInfo(key: $key, maxUses: $maxUses, contacts: $contacts, expiration: $expiration, subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicenseInfo &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, maxUses, contacts,
      expiration, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LicenseInfoCopyWith<_$_LicenseInfo> get copyWith =>
      __$$_LicenseInfoCopyWithImpl<_$_LicenseInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LicenseInfoToJson(
      this,
    );
  }
}

abstract class _LicenseInfo implements LicenseInfo {
  const factory _LicenseInfo(
      {@JsonKey(name: 'key')
          required final String key,
      @JsonKey(name: 'max_uses')
          required final int maxUses,
      @JsonKey(name: 'contacts')
          required final String contacts,
      @JsonKey(name: 'expiration')
          required final DateTime expiration,
      @JsonKey(name: 'subjects_info')
          required final List<SubjectData> subjects}) = _$_LicenseInfo;

  factory _LicenseInfo.fromJson(Map<String, dynamic> json) =
      _$_LicenseInfo.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'max_uses')
  int get maxUses;
  @override
  @JsonKey(name: 'contacts')
  String get contacts;
  @override
  @JsonKey(name: 'expiration')
  DateTime get expiration;
  @override
  @JsonKey(name: 'subjects_info')
  List<SubjectData> get subjects;
  @override
  @JsonKey(ignore: true)
  _$$_LicenseInfoCopyWith<_$_LicenseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
