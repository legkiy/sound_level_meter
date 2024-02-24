import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({
    super.key,
  });

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  bool isRecording = false;
  NoiseReading? latestReading;
  StreamSubscription<NoiseReading>? noiseSubscription;
  NoiseMeter? noiseMeter;

  @override
  void dispose() {
    noiseSubscription?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // start();
    super.initState();
    // Инициализация состояния
  }

  void onData(NoiseReading noiseReading) =>
      setState(() => latestReading = noiseReading);

  void onError(Object error) {
    print('sound streem error:${error.toString()}');
    stop();
  }

  Future<bool> checkPermission() async => await Permission.microphone.isGranted;

  /// Request the microphone permission.
  Future<void> requestPermission() async =>
      await Permission.microphone.request();

  /// Start noise sampling.
  Future<void> start() async {
    // Create a noise meter, if not already done.
    noiseMeter ??= NoiseMeter();

    // Check permission to use the microphone.
    //
    // Remember to update the AndroidManifest file (Android) and the
    // Info.plist and pod files (iOS).
    if (!(await checkPermission())) await requestPermission();

    // Listen to the noise stream.
    noiseSubscription = noiseMeter?.noise.listen(onData, onError: onError);
    setState(() => isRecording = true);
  }

  /// Stop sampling.
  void stop() {
    noiseSubscription?.cancel();
    setState(() => isRecording = false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.red,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Current ${latestReading?.meanDecibel.toStringAsFixed(2) ?? 0} dB',
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Max ${latestReading?.maxDecibel.toStringAsFixed(2) ?? 0} dB',
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                  onPressed: () {
                    stop();
                  },
                  child: Text('stop'))
              // SizedBox(
              //   height: 50,
              //   child: VerticalDivider(
              //     color: Colors.grey.shade200,
              //     width: 20,
              //     thickness: 2,
              //   ),
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Min 35.3',
              //       style: TextStyle(
              //         fontSize: 25,
              //         color: Colors.green.shade800,
              //       ),
              //     ),
              //     Text(
              //       'Max 70.3',
              //       style: TextStyle(
              //         fontSize: 25,
              //         color: Colors.red.shade800,
              //       ),
              //     )
              //   ],
              // )
            ],
          )
        ],
      ),
    );
  }
}
