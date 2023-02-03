import 'package:freezed_annotation/freezed_annotation.dart';

part 'hc_result_state.freezed.dart';
part 'hc_result_state.g.dart';

@freezed
class HealthConnectResultState with _$HealthConnectResultState {
  factory HealthConnectResultState(
    bool isMethodChannelSuccess,
    bool isLoading,
  ) = _HealthConnectResultStatee;

  factory HealthConnectResultState.fromJson(Map<String, dynamic> json) =>
      _$HealthConnectResultStateFromJson(json);
}
