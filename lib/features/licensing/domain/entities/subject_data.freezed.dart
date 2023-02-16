// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectData _$SubjectDataFromJson(Map<String, dynamic> json) {
  return _SubjectData.fromJson(json);
}

/// @nodoc
mixin _$SubjectData {
  @JsonKey(name: 'sid')
  int get sid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'classes')
  List<String> get classes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectDataCopyWith<SubjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDataCopyWith<$Res> {
  factory $SubjectDataCopyWith(
          SubjectData value, $Res Function(SubjectData) then) =
      _$SubjectDataCopyWithImpl<$Res, SubjectData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sid') int sid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'alias') String alias,
      @JsonKey(name: 'classes') List<String> classes});
}

/// @nodoc
class _$SubjectDataCopyWithImpl<$Res, $Val extends SubjectData>
    implements $SubjectDataCopyWith<$Res> {
  _$SubjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? name = null,
    Object? alias = null,
    Object? classes = null,
  }) {
    return _then(_value.copyWith(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectDataCopyWith<$Res>
    implements $SubjectDataCopyWith<$Res> {
  factory _$$_SubjectDataCopyWith(
          _$_SubjectData value, $Res Function(_$_SubjectData) then) =
      __$$_SubjectDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sid') int sid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'alias') String alias,
      @JsonKey(name: 'classes') List<String> classes});
}

/// @nodoc
class __$$_SubjectDataCopyWithImpl<$Res>
    extends _$SubjectDataCopyWithImpl<$Res, _$_SubjectData>
    implements _$$_SubjectDataCopyWith<$Res> {
  __$$_SubjectDataCopyWithImpl(
      _$_SubjectData _value, $Res Function(_$_SubjectData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? name = null,
    Object? alias = null,
    Object? classes = null,
  }) {
    return _then(_$_SubjectData(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectData implements _SubjectData {
  const _$_SubjectData(
      {@JsonKey(name: 'sid') required this.sid,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'alias') required this.alias,
      @JsonKey(name: 'classes') required final List<String> classes})
      : _classes = classes;

  factory _$_SubjectData.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectDataFromJson(json);

  @override
  @JsonKey(name: 'sid')
  final int sid;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'alias')
  final String alias;
  final List<String> _classes;
  @override
  @JsonKey(name: 'classes')
  List<String> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  @override
  String toString() {
    return 'SubjectData(sid: $sid, name: $name, alias: $alias, classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectData &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sid, name, alias,
      const DeepCollectionEquality().hash(_classes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectDataCopyWith<_$_SubjectData> get copyWith =>
      __$$_SubjectDataCopyWithImpl<_$_SubjectData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectDataToJson(
      this,
    );
  }
}

abstract class _SubjectData implements SubjectData {
  const factory _SubjectData(
          {@JsonKey(name: 'sid') required final int sid,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'alias') required final String alias,
          @JsonKey(name: 'classes') required final List<String> classes}) =
      _$_SubjectData;

  factory _SubjectData.fromJson(Map<String, dynamic> json) =
      _$_SubjectData.fromJson;

  @override
  @JsonKey(name: 'sid')
  int get sid;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'alias')
  String get alias;
  @override
  @JsonKey(name: 'classes')
  List<String> get classes;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectDataCopyWith<_$_SubjectData> get copyWith =>
      throw _privateConstructorUsedError;
}
