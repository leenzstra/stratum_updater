// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseBase _$ResponseBaseFromJson(Map<String, dynamic> json) {
  return _ResponseBase.fromJson(json);
}

/// @nodoc
mixin _$ResponseBase {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  bool get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Object get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBaseCopyWith<ResponseBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBaseCopyWith<$Res> {
  factory $ResponseBaseCopyWith(
          ResponseBase value, $Res Function(ResponseBase) then) =
      _$ResponseBaseCopyWithImpl<$Res, ResponseBase>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'result') bool result,
      @JsonKey(name: 'data') Object data});
}

/// @nodoc
class _$ResponseBaseCopyWithImpl<$Res, $Val extends ResponseBase>
    implements $ResponseBaseCopyWith<$Res> {
  _$ResponseBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? result = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseBaseCopyWith<$Res>
    implements $ResponseBaseCopyWith<$Res> {
  factory _$$_ResponseBaseCopyWith(
          _$_ResponseBase value, $Res Function(_$_ResponseBase) then) =
      __$$_ResponseBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'result') bool result,
      @JsonKey(name: 'data') Object data});
}

/// @nodoc
class __$$_ResponseBaseCopyWithImpl<$Res>
    extends _$ResponseBaseCopyWithImpl<$Res, _$_ResponseBase>
    implements _$$_ResponseBaseCopyWith<$Res> {
  __$$_ResponseBaseCopyWithImpl(
      _$_ResponseBase _value, $Res Function(_$_ResponseBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? result = null,
    Object? data = null,
  }) {
    return _then(_$_ResponseBase(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseBase implements _ResponseBase {
  const _$_ResponseBase(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'data') required this.data});

  factory _$_ResponseBase.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseBaseFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'result')
  final bool result;
  @override
  @JsonKey(name: 'data')
  final Object data;

  @override
  String toString() {
    return 'ResponseBase(message: $message, result: $result, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseBase &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, result, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseBaseCopyWith<_$_ResponseBase> get copyWith =>
      __$$_ResponseBaseCopyWithImpl<_$_ResponseBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseBaseToJson(
      this,
    );
  }
}

abstract class _ResponseBase implements ResponseBase {
  const factory _ResponseBase(
      {@JsonKey(name: 'message') required final String message,
      @JsonKey(name: 'result') required final bool result,
      @JsonKey(name: 'data') required final Object data}) = _$_ResponseBase;

  factory _ResponseBase.fromJson(Map<String, dynamic> json) =
      _$_ResponseBase.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'result')
  bool get result;
  @override
  @JsonKey(name: 'data')
  Object get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseBaseCopyWith<_$_ResponseBase> get copyWith =>
      throw _privateConstructorUsedError;
}
