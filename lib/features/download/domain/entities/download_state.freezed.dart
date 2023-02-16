// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current, int total, SubjectData subjectData)
        downloading,
    required TResult Function() init,
    required TResult Function() finished,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult? Function()? init,
    TResult? Function()? finished,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult Function()? init,
    TResult Function()? finished,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(Init value) init,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Downloading value)? downloading,
    TResult? Function(Init value)? init,
    TResult? Function(Finished value)? finished,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(Init value)? init,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DownloadingCopyWith<$Res> {
  factory _$$DownloadingCopyWith(
          _$Downloading value, $Res Function(_$Downloading) then) =
      __$$DownloadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int current, int total, SubjectData subjectData});

  $SubjectDataCopyWith<$Res> get subjectData;
}

/// @nodoc
class __$$DownloadingCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$Downloading>
    implements _$$DownloadingCopyWith<$Res> {
  __$$DownloadingCopyWithImpl(
      _$Downloading _value, $Res Function(_$Downloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
    Object? subjectData = null,
  }) {
    return _then(_$Downloading(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      subjectData: null == subjectData
          ? _value.subjectData
          : subjectData // ignore: cast_nullable_to_non_nullable
              as SubjectData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectDataCopyWith<$Res> get subjectData {
    return $SubjectDataCopyWith<$Res>(_value.subjectData, (value) {
      return _then(_value.copyWith(subjectData: value));
    });
  }
}

/// @nodoc

class _$Downloading implements Downloading {
  const _$Downloading(
      {required this.current, required this.total, required this.subjectData});

  @override
  final int current;
  @override
  final int total;
  @override
  final SubjectData subjectData;

  @override
  String toString() {
    return 'DownloadState.downloading(current: $current, total: $total, subjectData: $subjectData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Downloading &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.subjectData, subjectData) ||
                other.subjectData == subjectData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current, total, subjectData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadingCopyWith<_$Downloading> get copyWith =>
      __$$DownloadingCopyWithImpl<_$Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current, int total, SubjectData subjectData)
        downloading,
    required TResult Function() init,
    required TResult Function() finished,
    required TResult Function(Object error) error,
  }) {
    return downloading(current, total, subjectData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult? Function()? init,
    TResult? Function()? finished,
    TResult? Function(Object error)? error,
  }) {
    return downloading?.call(current, total, subjectData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult Function()? init,
    TResult Function()? finished,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(current, total, subjectData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(Init value) init,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Downloading value)? downloading,
    TResult? Function(Init value)? init,
    TResult? Function(Finished value)? finished,
    TResult? Function(Error value)? error,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(Init value)? init,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class Downloading implements DownloadState {
  const factory Downloading(
      {required final int current,
      required final int total,
      required final SubjectData subjectData}) = _$Downloading;

  int get current;
  int get total;
  SubjectData get subjectData;
  @JsonKey(ignore: true)
  _$$DownloadingCopyWith<_$Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'DownloadState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current, int total, SubjectData subjectData)
        downloading,
    required TResult Function() init,
    required TResult Function() finished,
    required TResult Function(Object error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult? Function()? init,
    TResult? Function()? finished,
    TResult? Function(Object error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult Function()? init,
    TResult Function()? finished,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(Init value) init,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Downloading value)? downloading,
    TResult? Function(Init value)? init,
    TResult? Function(Finished value)? finished,
    TResult? Function(Error value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(Init value)? init,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements DownloadState {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$FinishedCopyWith<$Res> {
  factory _$$FinishedCopyWith(
          _$Finished value, $Res Function(_$Finished) then) =
      __$$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$Finished>
    implements _$$FinishedCopyWith<$Res> {
  __$$FinishedCopyWithImpl(_$Finished _value, $Res Function(_$Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Finished implements Finished {
  const _$Finished();

  @override
  String toString() {
    return 'DownloadState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current, int total, SubjectData subjectData)
        downloading,
    required TResult Function() init,
    required TResult Function() finished,
    required TResult Function(Object error) error,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult? Function()? init,
    TResult? Function()? finished,
    TResult? Function(Object error)? error,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult Function()? init,
    TResult Function()? finished,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(Init value) init,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Downloading value)? downloading,
    TResult? Function(Init value)? init,
    TResult? Function(Finished value)? finished,
    TResult? Function(Error value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(Init value)? init,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements DownloadState {
  const factory Finished() = _$Finished;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'DownloadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current, int total, SubjectData subjectData)
        downloading,
    required TResult Function() init,
    required TResult Function() finished,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult? Function()? init,
    TResult? Function()? finished,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current, int total, SubjectData subjectData)?
        downloading,
    TResult Function()? init,
    TResult Function()? finished,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(Init value) init,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Downloading value)? downloading,
    TResult? Function(Init value)? init,
    TResult? Function(Finished value)? finished,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(Init value)? init,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DownloadState {
  const factory Error(final Object error) = _$Error;

  Object get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
