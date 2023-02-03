import 'package:flutter/material.dart';
import 'package:flutter_with_hc/di/provider_setup.dart';
import 'package:flutter_with_hc/presentation/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'presentation/hc_result/hc_result_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: globalProviders,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/hc_result': (BuildContext context) =>
            const HealthConnectResultScreen(),
      },
      home: const HomeScreen(title: 'Flutter with Google Health Connect'),
    );
  }
}
