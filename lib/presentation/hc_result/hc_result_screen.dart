import 'package:flutter/material.dart';
import 'package:flutter_with_hc/data/data_source/hc_method_channel.dart';
import 'package:flutter_with_hc/presentation/hc_result/hc_result_view_model.dart';
import 'package:provider/provider.dart';

class HealthConnectResultScreen extends StatefulWidget {
  const HealthConnectResultScreen({super.key});

  @override
  State<HealthConnectResultScreen> createState() =>
      _HealthConnectResultScreenState();
}

class _HealthConnectResultScreenState extends State<HealthConnectResultScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HealthConnectResultViewModel>();
    final callBackData = context.watch<HealthConnectMethodChannel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Connect Response Result'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/banner.png'),
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orangeAccent,
                    child: const Center(
                      child: Text(
                        'Blood Glucose',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue[100],
                    child: const Center(
                      child: Text(
                        'Oxygen Saturation',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (viewModel.state.isLoading == false)
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow[100],
                      child: Center(
                        child: ListView.builder(
                          itemCount:
                              callBackData.bloodGlucoseRecordModelList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                leading: const Icon(Icons.bloodtype),
                                title: Column(
                                  children: [
                                    Text(
                                        "type: ${callBackData.bloodGlucoseRecordModelList[index].type.toString()}"),
                                    Text(
                                        "levelMillimolesPerLiter: ${callBackData.bloodGlucoseRecordModelList[index].levelMillimolesPerLiter.toString()}"),
                                    // Text(
                                    //     "mealType: ${callBackData.bloodGlucoseRecordModelList[index].mealType.toString()}"),
                                    // Text(
                                    //     "relationToMeal: ${callBackData.bloodGlucoseRecordModelList[index].relationToMeal.toString()}"),
                                    // Text(
                                    //     "specimenSource: ${callBackData.bloodGlucoseRecordModelList[index].specimenSource.toString()}"),
                                    // Text(
                                    //     "time: ${callBackData.bloodGlucoseRecordModelList[index].time.toString()}"),
                                    // Text(
                                    //     "zoneOffset: ${callBackData.bloodGlucoseRecordModelList[index].zoneOffset.toString()}"),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow[100],
                      child: Center(
                        child: ListView.builder(
                          itemCount: callBackData
                              .oxygenSaturationRecordModelList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                leading: const Icon(Icons.air),
                                title: Column(
                                  children: [
                                    Text(
                                        "type: ${callBackData.oxygenSaturationRecordModelList[index].type.toString()}"),
                                    Text(
                                        "percentage: ${callBackData.oxygenSaturationRecordModelList[index].percentage.toString()}"),
                                    // Text(
                                    //     "mealType: ${callBackData.bloodGlucoseRecordModelList[index].mealType.toString()}"),
                                    // Text(
                                    //     "relationToMeal: ${callBackData.bloodGlucoseRecordModelList[index].relationToMeal.toString()}"),
                                    // Text(
                                    //     "specimenSource: ${callBackData.bloodGlucoseRecordModelList[index].specimenSource.toString()}"),
                                    // Text(
                                    //     "time: ${callBackData.bloodGlucoseRecordModelList[index].time.toString()}"),
                                    // Text(
                                    //     "zoneOffset: ${callBackData.bloodGlucoseRecordModelList[index].zoneOffset.toString()}"),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            const Expanded(child: CircularProgressIndicator()),
          SizedBox(
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                viewModel.fetch();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 29, 173, 34),
                  elevation: 0.0),
              child: const Text(
                'Fetch Data',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
