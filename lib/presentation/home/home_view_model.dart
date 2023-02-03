import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_with_hc/domain/use_case/get_has_permission_use_case.dart';
import 'package:flutter_with_hc/domain/use_case/register_method_channel_handler_use_case.dart';
import 'package:flutter_with_hc/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetHasPermissionUseCase getHasPermissionUseCase;
  final RegisterMethodChannelCallbackHandlerUseCase
      registerMethodChannelCallbackHandlerUseCase;

  HomeState _state = HomeState(null, false);

  HomeState get state => _state;

  HomeViewModel(this.getHasPermissionUseCase,
      this.registerMethodChannelCallbackHandlerUseCase);

  Future<void> getHasPermission() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    _state = state.copyWith(result: await getHasPermissionUseCase());
    notifyListeners();
    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  void registerMethodChannelCallbackHandler() {
    registerMethodChannelCallbackHandlerUseCase();
  }
}
