import 'package:flutter_with_hc/domain/repository/hc_method_channel_repository.dart';

class RegisterMethodChannelCallbackHandlerUseCase {
  final HealthConnectMethodChannelRepository repository;
  RegisterMethodChannelCallbackHandlerUseCase({
    required this.repository,
  });

  void call() {
    return repository.registerMethodChannelCallbackHandler();
  }
}
