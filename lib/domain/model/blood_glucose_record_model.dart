import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_glucose_record_model.freezed.dart';
part 'blood_glucose_record_model.g.dart';

@freezed
class BloodGlucoseRecordModel with _$BloodGlucoseRecordModel {
  factory BloodGlucoseRecordModel({
    String? levelMillimolesPerLiter,
    String? type,
    String? mealType,
    String? relationToMeal,
    String? specimenSource,
    String? time,
    String? zoneOffset,
  }) = _BloodGlucoseRecordModel;

  factory BloodGlucoseRecordModel.fromJson(Map<String, dynamic> json) =>
      _$BloodGlucoseRecordModelFromJson(json);
}
