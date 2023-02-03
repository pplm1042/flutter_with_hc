// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hc_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthConnectResultState _$HealthConnectResultStateFromJson(
    Map<String, dynamic> json) {
  return _HealthConnectResultStatee.fromJson(json);
}

/// @nodoc
mixin _$HealthConnectResultState {
  bool get isMethodChannelSuccess => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthConnectResultStateCopyWith<HealthConnectResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthConnectResultStateCopyWith<$Res> {
  factory $HealthConnectResultStateCopyWith(HealthConnectResultState value,
          $Res Function(HealthConnectResultState) then) =
      _$HealthConnectResultStateCopyWithImpl<$Res, HealthConnectResultState>;
  @useResult
  $Res call({bool isMethodChannelSuccess, bool isLoading});
}

/// @nodoc
class _$HealthConnectResultStateCopyWithImpl<$Res,
        $Val extends HealthConnectResultState>
    implements $HealthConnectResultStateCopyWith<$Res> {
  _$HealthConnectResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMethodChannelSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isMethodChannelSuccess: null == isMethodChannelSuccess
          ? _value.isMethodChannelSuccess
          : isMethodChannelSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HealthConnectResultStateeCopyWith<$Res>
    implements $HealthConnectResultStateCopyWith<$Res> {
  factory _$$_HealthConnectResultStateeCopyWith(
          _$_HealthConnectResultStatee value,
          $Res Function(_$_HealthConnectResultStatee) then) =
      __$$_HealthConnectResultStateeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMethodChannelSuccess, bool isLoading});
}

/// @nodoc
class __$$_HealthConnectResultStateeCopyWithImpl<$Res>
    extends _$HealthConnectResultStateCopyWithImpl<$Res,
        _$_HealthConnectResultStatee>
    implements _$$_HealthConnectResultStateeCopyWith<$Res> {
  __$$_HealthConnectResultStateeCopyWithImpl(
      _$_HealthConnectResultStatee _value,
      $Res Function(_$_HealthConnectResultStatee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMethodChannelSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_$_HealthConnectResultStatee(
      null == isMethodChannelSuccess
          ? _value.isMethodChannelSuccess
          : isMethodChannelSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HealthConnectResultStatee implements _HealthConnectResultStatee {
  _$_HealthConnectResultStatee(this.isMethodChannelSuccess, this.isLoading);

  factory _$_HealthConnectResultStatee.fromJson(Map<String, dynamic> json) =>
      _$$_HealthConnectResultStateeFromJson(json);

  @override
  final bool isMethodChannelSuccess;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HealthConnectResultState(isMethodChannelSuccess: $isMethodChannelSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthConnectResultStatee &&
            (identical(other.isMethodChannelSuccess, isMethodChannelSuccess) ||
                other.isMethodChannelSuccess == isMethodChannelSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMethodChannelSuccess, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HealthConnectResultStateeCopyWith<_$_HealthConnectResultStatee>
      get copyWith => __$$_HealthConnectResultStateeCopyWithImpl<
          _$_HealthConnectResultStatee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HealthConnectResultStateeToJson(
      this,
    );
  }
}

abstract class _HealthConnectResultStatee implements HealthConnectResultState {
  factory _HealthConnectResultStatee(
          final bool isMethodChannelSuccess, final bool isLoading) =
      _$_HealthConnectResultStatee;

  factory _HealthConnectResultStatee.fromJson(Map<String, dynamic> json) =
      _$_HealthConnectResultStatee.fromJson;

  @override
  bool get isMethodChannelSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HealthConnectResultStateeCopyWith<_$_HealthConnectResultStatee>
      get copyWith => throw _privateConstructorUsedError;
}
