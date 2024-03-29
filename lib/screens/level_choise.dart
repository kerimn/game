import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/constants/images.dart';
import 'package:game/screens/difficult_screen.dart';
import 'package:game/screens/game_screen.dart';
import 'package:game/screens/settings_screen.dart';

class LevelChoise extends StatelessWidget {
  const LevelChoise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.initialPhoto2,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
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
          ),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: MediaQuery.of(context).size.width * 0.02,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.63,
                left: MediaQuery.of(context).size.width * 0.1,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "1",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.12,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.43,
                left: MediaQuery.of(context).size.width * 0.195,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: MediaQuery.of(context).size.width * 0.22,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.63,
                left: MediaQuery.of(context).size.width * 0.295,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "3",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.32,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.435,
                left: MediaQuery.of(context).size.width * 0.395,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "4",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: MediaQuery.of(context).size.width * 0.42,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.63,
                left: MediaQuery.of(context).size.width * 0.495,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "5",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.52,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.435,
                left: MediaQuery.of(context).size.width * 0.595,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "6",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: MediaQuery.of(context).size.width * 0.62,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.635,
                left: MediaQuery.of(context).size.width * 0.7,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "7",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      shadows: [
                        Shadow(
                          offset: Offset(0.957, 0.957),
                          blurRadius: 0,
                          color: Color(0xFF59173E),
                        ),
                      ],
                      fontFamily: 'Inter',
                      fontSize: 32.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      height: 22.974 / 32.0,
                      letterSpacing: 1.436,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.72,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.43,
                left: MediaQuery.of(context).size.width * 0.795,
                child: const Text(
                  "8",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    shadows: [
                      Shadow(
                        offset: Offset(0.957, 0.957),
                        blurRadius: 0,
                        color: Color(0xFF59173E),
                      ),
                    ],
                    fontFamily: 'Inter',
                    fontSize: 32.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    height: 22.974 / 32.0,
                    letterSpacing: 1.436,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: MediaQuery.of(context).size.width * 0.82,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GameScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImages.dash,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // height: MediaQuery.of(context).size.height * 0.18,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.635,
                left: MediaQuery.of(context).size.width * 0.895,
                child: const Text(
                  "9",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    shadows: [
                      Shadow(
                        offset: Offset(0.957, 0.957),
                        blurRadius: 0,
                        color: Color(0xFF59173E),
                      ),
                    ],
                    fontFamily: 'Inter',
                    fontSize: 32.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    height: 22.974 / 32.0,
                    letterSpacing: 1.436,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
