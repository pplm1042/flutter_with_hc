// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oxygen_saturation_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OxygenSaturationRecordModel _$OxygenSaturationRecordModelFromJson(
    Map<String, dynamic> json) {
  return _OxygenSaturationRecordModel.fromJson(json);
}

/// @nodoc
mixin _$OxygenSaturationRecordModel {
  String? get percentage => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get zoneOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OxygenSaturationRecordModelCopyWith<OxygenSaturationRecordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OxygenSaturationRecordModelCopyWith<$Res> {
  factory $OxygenSaturationRecordModelCopyWith(
          OxygenSaturationRecordModel value,
          $Res Function(OxygenSaturationRecordModel) then) =
      _$OxygenSaturationRecordModelCopyWithImpl<$Res,
          OxygenSaturationRecordModel>;
  @useResult
  $Res call(
      {String? percentage, String? type, String? time, String? zoneOffset});
}

/// @nodoc
class _$OxygenSaturationRecordModelCopyWithImpl<$Res,
        $Val extends OxygenSaturationRecordModel>
    implements $OxygenSaturationRecordModelCopyWith<$Res> {
  _$OxygenSaturationRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? type = freezed,
    Object? time = freezed,
    Object? zoneOffset = freezed,
  }) {
    return _then(_value.copyWith(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneOffset: freezed == zoneOffset
          ? _value.zoneOffset
          : zoneOffset // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OxygenSaturationRecordModelCopyWith<$Res>
    implements $OxygenSaturationRecordModelCopyWith<$Res> {
  factory _$$_OxygenSaturationRecordModelCopyWith(
          _$_OxygenSaturationRecordModel value,
          $Res Function(_$_OxygenSaturationRecordModel) then) =
      __$$_OxygenSaturationRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? percentage, String? type, String? time, String? zoneOffset});
}

/// @nodoc
class __$$_OxygenSaturationRecordModelCopyWithImpl<$Res>
    extends _$OxygenSaturationRecordModelCopyWithImpl<$Res,
        _$_OxygenSaturationRecordModel>
    implements _$$_OxygenSaturationRecordModelCopyWith<$Res> {
  __$$_OxygenSaturationRecordModelCopyWithImpl(
      _$_OxygenSaturationRecordModel _value,
      $Res Function(_$_OxygenSaturationRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = freezed,
    Object? type = freezed,
    Object? time = freezed,
    Object? zoneOffset = freezed,
  }) {
    return _then(_$_OxygenSaturationRecordModel(
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneOffset: freezed == zoneOffset
          ? _value.zoneOffset
          : zoneOffset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OxygenSaturationRecordModel implements _OxygenSaturationRecordModel {
  _$_OxygenSaturationRecordModel(
      {this.percentage, this.type, this.time, this.zoneOffset});

  factory _$_OxygenSaturationRecordModel.fromJson(Map<String, dynamic> json) =>
      _$$_OxygenSaturationRecordModelFromJson(json);

  @override
  final String? percentage;
  @override
  final String? type;
  @override
  final String? time;
  @override
  final String? zoneOffset;

  @override
  String toString() {
    return 'OxygenSaturationRecordModel(percentage: $percentage, type: $type, time: $time, zoneOffset: $zoneOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OxygenSaturationRecordModel &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.zoneOffset, zoneOffset) ||
                other.zoneOffset == zoneOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percentage, type, time, zoneOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OxygenSaturationRecordModelCopyWith<_$_OxygenSaturationRecordModel>
      get copyWith => __$$_OxygenSaturationRecordModelCopyWithImpl<
          _$_OxygenSaturationRecordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OxygenSaturationRecordModelToJson(
      this,
    );
  }
}

abstract class _OxygenSaturationRecordModel
    implements OxygenSaturationRecordModel {
  factory _OxygenSaturationRecordModel(
      {final String? percentage,
      final String? type,
      final String? time,
      final String? zoneOffset}) = _$_OxygenSaturationRecordModel;

  factory _OxygenSaturationRecordModel.fromJson(Map<String, dynamic> json) =
      _$_OxygenSaturationRecordModel.fromJson;

  @override
  String? get percentage;
  @override
  String? get type;
  @override
  String? get time;
  @override
  String? get zoneOffset;
  @override
  @JsonKey(ignore: true)
  _$$_OxygenSaturationRecordModelCopyWith<_$_OxygenSaturationRecordModel>
      get copyWith => throw _privateConstructorUsedError;
}
