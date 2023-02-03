import 'package:flutter_with_hc/domain/model/google_health_connect_request_model.dart';

abstract class HealthConnectMethodChannelRepository {
  Future<bool> getHasPermission();
  void registerMethodChannelCallbackHandler();
  Future<bool> tryToGetHealthConnectData(
      GoogleHealthConnectRequestModel googleHealthConnectRequestModel);
}
