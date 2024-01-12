import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game/constants/images.dart';
import 'package:game/screens/on_boarding.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  double progressValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.initialPhoto,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Center(
            child: Text(
              "TIGER TRIP",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 68,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 0.0,
                      color: Color(0xFF59173E),
                    ),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(left: 35, right: 35, bottom: 40),
              child: LinearProgressIndicator(
                value: progressValue,
                minHeight: 4,
                backgroundColor: Colors.grey,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _simulateProgress();
  }

  void _simulateProgress() {
    const totalDuration = Duration(seconds: 5);
    const updateInterval = Duration(milliseconds: 100);

    Timer.periodic(updateInterval, (Timer timer) {
      setState(() {
        if (progressValue < 1.0) {
          progressValue +=
              (updateInterval.inMilliseconds / totalDuration.inMilliseconds);
        } else {
          timer.cancel();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnBoardingScreen()),
          );
        }
      });
    });
  }
}
