// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GoogleHealthConnectRequestModel {
  String? startTime;
  String? endTime;

  GoogleHealthConnectRequestModel({
    this.startTime,
    this.endTime,
  });

  GoogleHealthConnectRequestModel copyWith({
    String? startTime,
    String? endTime,
  }) {
    return GoogleHealthConnectRequestModel(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  factory GoogleHealthConnectRequestModel.fromMap(Map<String, dynamic> map) {
    return GoogleHealthConnectRequestModel(
      startTime: map['startTime'] as String?,
      endTime: map['endTime'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory GoogleHealthConnectRequestModel.fromJson(String source) =>
      GoogleHealthConnectRequestModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'GoogleHealthConnectRequestModel(startTime: $startTime, endTime: $endTime)';

  @override
  bool operator ==(covariant GoogleHealthConnectRequestModel other) {
    if (identical(this, other)) return true;

    return other.startTime == startTime && other.endTime == endTime;
  }

  @override
  int get hashCode => startTime.hashCode ^ endTime.hashCode;
}
