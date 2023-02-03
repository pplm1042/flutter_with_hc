import 'package:freezed_annotation/freezed_annotation.dart';

part 'oxygen_saturation_record_model.freezed.dart';
part 'oxygen_saturation_record_model.g.dart';

@freezed
class OxygenSaturationRecordModel with _$OxygenSaturationRecordModel {
  factory OxygenSaturationRecordModel({
    String? percentage,
    String? type,
    String? time,
    String? zoneOffset,
  }) = _OxygenSaturationRecordModel;

  factory OxygenSaturationRecordModel.fromJson(Map<String, dynamic> json) =>
      _$OxygenSaturationRecordModelFromJson(json);
}
