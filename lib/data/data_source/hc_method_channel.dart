import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_with_hc/domain/model/blood_glucose_record_model.dart';
import 'package:flutter_with_hc/domain/model/google_health_connect_request_model.dart';
import 'package:flutter_with_hc/domain/model/oxygen_saturation_record_model.dart';

class HealthConnectMethodChannel with ChangeNotifier {
  MethodChannel channel = const MethodChannel('google-health-connect');

  String hasGoogleHealthConnectPermission = 'hasGoogleHealthConnectPermission';
  String getGoogleHealthConnectData = 'getGoogleHealthConnectData';

  static int responseDateCount = 0;

  List<BloodGlucoseRecordModel> bloodGlucoseRecordModelList = [];
  List<OxygenSaturationRecordModel> oxygenSaturationRecordModelList = [];

  // Function to check if Google Health Connect has allowed permission for this application by using method channel
  Future<bool> checkGoogleHealthConnectPermission() async {
    return await channel.invokeMethod(hasGoogleHealthConnectPermission);
  }

  Future<bool> tryToGetHealthConnectData(
      GoogleHealthConnectRequestModel googleHealthConnectRequestModel) async {
    final res = await channel.invokeMethod(
        getGoogleHealthConnectData, googleHealthConnectRequestModel.toMap());

    // Before getting Google Health data, Success comes first.
    if (res["success"] == "success") {
      return true;
    }
    return false;
  }

  // Register a handler to receive data asynchronously coming from the Kotlin method channel
  void registerMethodCallbackHandler() {
    channel.setMethodCallHandler(handler);
  }

  // Handler to receive data asynchronously coming from Kotlin method channel
  Future<dynamic> handler(MethodCall call) async {
    switch (call.method) {
      case "bloodGlucoseRecord":
        var records = call.arguments;
        bloodGlucoseRecordModelList = [];
        for (var record in records) {
          // print(BloodGlucoseRecordModel.fromJson( record));

          bloodGlucoseRecordModelList.add(BloodGlucoseRecordModel.fromJson(
              Map<String, dynamic>.from(record)));
        }
        log(bloodGlucoseRecordModelList.toString());
        notifyListeners();
        responseDateCount += 1;

        break;
      case "oxygenSaturationRecord":
        var records = call.arguments;
        oxygenSaturationRecordModelList = [];
        for (var record in records) {
          // print(OxygenSaturationRecordModel.fromJson(record));
          oxygenSaturationRecordModelList.add(
              OxygenSaturationRecordModel.fromJson(
                  Map<String, dynamic>.from(record)));
        }
        log(oxygenSaturationRecordModelList.toString());
        notifyListeners();

        responseDateCount += 1;
        break;

      default:
        throw ("method not defined");
    }
  }
}
