import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/constants/images.dart';
import 'package:game/screens/difficult_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.bg3,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DifficultScreen(),
                  ),
                );
              },
              child: SvgPicture.asset(AppImages.homeIcon),
            ),
          ),
          Positioned(
            bottom: -40,
            right: 20,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(AppImages.tiger),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImages.settingsTop,
                  width: MediaQuery.of(context).size.width * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.16,
                child: Text(
                  "SETTINGS",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18.0,
                        shadows: [
                          const Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 0.0,
                            color: Color(0xFF59173E),
                          ),
                        ],
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                child: Text(
                  "Privacy Policy",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18.0,
                        shadows: [
                          const Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 0.0,
                            color: Color(0xFF59173E),
                          ),
                        ],
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                child: Text(
                  "Terms of use",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18.0,
                        shadows: [
                          const Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 0.0,
                            color: Color(0xFF59173E),
                          ),
                        ],
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.65,
                child: Text(
                  "Rate app",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18.0,
                        shadows: [
                          const Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 0.0,
                            color: Color(0xFF59173E),
                          ),
                        ],
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
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
