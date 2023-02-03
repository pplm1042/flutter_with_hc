import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_with_hc/data/data_source/hc_method_channel.dart';
import 'package:flutter_with_hc/domain/use_case/get_hc_data.dart';
import 'package:flutter_with_hc/presentation/hc_result/hc_result_state.dart';

class HealthConnectResultViewModel with ChangeNotifier {
  final GetHealthConnectDataUseCase getHealthConnectDataUseCase;

  HealthConnectResultState _state = HealthConnectResultState(false, false);

  HealthConnectResultState get state => _state;

  HealthConnectResultViewModel(this.getHealthConnectDataUseCase);

  void fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    HealthConnectMethodChannel.responseDateCount = 0;
    _state = state.copyWith(
        isMethodChannelSuccess: await getHealthConnectDataUseCase());
    if (_state.isMethodChannelSuccess) {
      updateCheck();
      _state = state.copyWith(isLoading: false);
    } else {
      // Todo: Since method channel call failed, related code must be added.
      _state = state.copyWith(isLoading: false);
    }
    notifyListeners();
  }

  Future<void> updateCheck() async {
    if (HealthConnectMethodChannel.responseDateCount == 2) {
      log('fetch done');
      return;
    } else {
      return Future.delayed(const Duration(seconds: 2), () {
        log('not yet fetch');
        return updateCheck();
      });
    }
  }
}
