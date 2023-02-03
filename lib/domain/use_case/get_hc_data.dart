// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_with_hc/domain/model/google_health_connect_request_model.dart';
import 'package:flutter_with_hc/domain/repository/hc_method_channel_repository.dart';

class GetHealthConnectDataUseCase {
  final HealthConnectMethodChannelRepository repository;
  final GoogleHealthConnectRequestModel googleHealthConnectRequestModel;
  GetHealthConnectDataUseCase({
    required this.repository,
    required this.googleHealthConnectRequestModel,
  });

  Future<bool> call() async {
    return await repository
        .tryToGetHealthConnectData(googleHealthConnectRequestModel);
  }
}
