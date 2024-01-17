import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/constants/images.dart';
import 'package:game/screens/difficult_screen.dart';
import 'package:game/screens/settings_screen.dart';
import 'package:game/screens/win_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int _secondsRemaining = 120;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WinScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.bg3,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * 0.82,
            child: Text(
              "$minutes:${seconds.toString().padLeft(2, '0')}",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                shadows: [
                  const Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 0.0,
                    color: Color(0xFF59173E),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingsScreen(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                            AppImages.settings,
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingsScreen(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                            AppImages.homeIcon,
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            SvgPicture.string(
                              svgString,
                              width: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppImages.heart,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "5",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            SvgPicture.string(
                              svgString2,
                              width: MediaQuery.of(context).size.width * 0.1,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppImages.coin,
                                    width: 20,
                                  ),
                                  Text(
                                    "150",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      AppImages.yokarkyDash,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.23,
                      child: Text(
                        "Level    9",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          shadows: [
                            const Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 0.0,
                              color: Color(0xFF59173E),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.22,
                      left: MediaQuery.of(context).size.width * 0.07,
                      child: Row(
                        children: [
                          // Image.asset(
                          //   AppImages.bomb,
                          //   width: MediaQuery.of(context).size.width * 0.075,
                          //   fit: BoxFit.cover,
                          // ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            AppImages.bomb,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            AppImages.bomb,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.41,
                      left: MediaQuery.of(context).size.width * 0.07,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            AppImages.kard,
                            width: MediaQuery.of(context).size.width * 0.075,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
