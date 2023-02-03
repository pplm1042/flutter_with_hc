// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_glucose_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BloodGlucoseRecordModel _$$_BloodGlucoseRecordModelFromJson(
        Map<String, dynamic> json) =>
    _$_BloodGlucoseRecordModel(
      levelMillimolesPerLiter: json['levelMillimolesPerLiter'] as String?,
      type: json['type'] as String?,
      mealType: json['mealType'] as String?,
      relationToMeal: json['relationToMeal'] as String?,
      specimenSource: json['specimenSource'] as String?,
      time: json['time'] as String?,
      zoneOffset: json['zoneOffset'] as String?,
    );

Map<String, dynamic> _$$_BloodGlucoseRecordModelToJson(
        _$_BloodGlucoseRecordModel instance) =>
    <String, dynamic>{
      'levelMillimolesPerLiter': instance.levelMillimolesPerLiter,
      'type': instance.type,
      'mealType': instance.mealType,
      'relationToMeal': instance.relationToMeal,
      'specimenSource': instance.specimenSource,
      'time': instance.time,
      'zoneOffset': instance.zoneOffset,
    };
