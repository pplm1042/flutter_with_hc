import 'package:flutter_with_hc/data/data_source/hc_method_channel.dart';
import 'package:flutter_with_hc/domain/model/google_health_connect_request_model.dart';
import 'package:flutter_with_hc/domain/repository/hc_method_channel_repository.dart';

class HealthConnectMethodChannelRepositoryImpl
    implements HealthConnectMethodChannelRepository {
  HealthConnectMethodChannel methodChannel;

  HealthConnectMethodChannelRepositoryImpl(
    this.methodChannel,
  );

  @override
  Future<bool> getHasPermission() async {
    return await methodChannel.checkGoogleHealthConnectPermission();
  }

  @override
  void registerMethodChannelCallbackHandler() {
    return methodChannel.registerMethodCallbackHandler();
  }

  @override
  Future<bool> tryToGetHealthConnectData(
      GoogleHealthConnectRequestModel googleHealthConnectRequestModel) async {
    return await methodChannel
        .tryToGetHealthConnectData(googleHealthConnectRequestModel);
  }
}
