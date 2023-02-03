import 'package:flutter_with_hc/data/data_source/hc_method_channel.dart';
import 'package:flutter_with_hc/data/repository/hc_method_channel_impl.dart';
import 'package:flutter_with_hc/domain/model/blood_glucose_record_model.dart';
import 'package:flutter_with_hc/domain/model/google_health_connect_request_model.dart';
import 'package:flutter_with_hc/domain/repository/hc_method_channel_repository.dart';
import 'package:flutter_with_hc/domain/use_case/get_has_permission_use_case.dart';
import 'package:flutter_with_hc/domain/use_case/get_hc_data.dart';
import 'package:flutter_with_hc/domain/use_case/register_method_channel_handler_use_case.dart';
import 'package:flutter_with_hc/presentation/hc_result/hc_result_view_model.dart';
import 'package:flutter_with_hc/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:intl/intl.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];
List<SingleChildWidget> independentModels = [
  Provider<BloodGlucoseRecordModel>(
    create: (context) => BloodGlucoseRecordModel(),
  ),
  Provider<BloodGlucoseRecordModel>(
    create: (context) => BloodGlucoseRecordModel(),
  ),
  ListenableProvider<HealthConnectMethodChannel>(
      create: (context) => HealthConnectMethodChannel())
];

List<SingleChildWidget> dependentModels = [
  ProxyProvider<HealthConnectMethodChannel,
          HealthConnectMethodChannelRepository>(
      update: (context, methodChannel, _) =>
          HealthConnectMethodChannelRepositoryImpl(methodChannel)),
  ProxyProvider<HealthConnectMethodChannelRepository, GetHasPermissionUseCase>(
      update: (context, repository, _) =>
          GetHasPermissionUseCase(repository: repository)),
  ProxyProvider<HealthConnectMethodChannelRepository,
          RegisterMethodChannelCallbackHandlerUseCase>(
      update: (context, repository, _) =>
          RegisterMethodChannelCallbackHandlerUseCase(repository: repository)),
  ProxyProvider<HealthConnectMethodChannelRepository,
          GetHealthConnectDataUseCase>(
      update: (context, repository, _) => GetHealthConnectDataUseCase(
          googleHealthConnectRequestModel: GoogleHealthConnectRequestModel(
              startTime: DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
                  .format(DateTime.now().subtract(const Duration(days: 7))),
              endTime: DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
                  .format(DateTime.now())),
          repository: repository))
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeViewModel>(
    create: (context) => HomeViewModel(context.read<GetHasPermissionUseCase>(),
        context.read<RegisterMethodChannelCallbackHandlerUseCase>()),
  ),
  ChangeNotifierProvider<HealthConnectResultViewModel>(
    create: (context) => HealthConnectResultViewModel(
        context.read<GetHealthConnectDataUseCase>()),
  ),
];
