// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_with_hc/domain/repository/hc_method_channel_repository.dart';

class GetHasPermissionUseCase {
  final HealthConnectMethodChannelRepository repository;
  GetHasPermissionUseCase({
    required this.repository,
  });

  Future<bool> call() async {
    return await repository.getHasPermission();
  }
}
