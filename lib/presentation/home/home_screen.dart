import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_apps/device_apps.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_hc/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Variable to check if Google Health Connect applicatoin is installed
                  bool isInstalled = await DeviceApps.isAppInstalled(
                      'com.google.android.apps.healthdata');
                  if (isInstalled) {
                    await viewModel.getHasPermission();
                  } else {
                    await LaunchApp.openApp(
                        androidPackageName:
                            'com.google.android.apps.healthdata');
                  }
                },
                child: const Text('permission check button')),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('permission status : '),
                viewModel.state.isLoading
                    ? const CircularProgressIndicator()
                    : Text(
                        (viewModel.state.result == null
                            ? 'Unknown'
                            : viewModel.state.result.toString()),
                        style: TextStyle(
                            color: viewModel.state.result == true
                                ? Colors.blue
                                : viewModel.state.result == false
                                    ? Colors.red
                                    : Colors.grey,
                            fontSize: 15),
                      ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (viewModel.state.result == true) {
                    viewModel.registerMethodChannelCallbackHandler();
                    Navigator.pushNamed(context, '/hc_result');
                  } else if (viewModel.state.result == false) {
                    LaunchApp.openApp(
                        androidPackageName:
                            'com.google.android.apps.healthdata');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'You should first check if you have allowed access to your app in the Health Connect app'),
                      ),
                    );
                  }
                },
                child: const AutoSizeText(
                  'Navigate to HC response result page',
                  maxLines: 1,
                )),
          ],
        ),
      ),
    );
  }
}
