import 'package:flutter/material.dart';
import 'package:game/constants/images.dart';
import 'package:game/screens/on_boarding3.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({super.key});

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
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.tiger,
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.6,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(27, 22, 17, 0.7),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tiger",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    "Our jungles are full of mysteries, and now we must solve them all! Look for bomb matches to save our tropical havens. But be careful, they're everywhere, and every move matters! Ready for puzzle-solving and jungle protection?",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoarding3Screen(),
                    ),
                  );
                },
                child: Image.asset(
                  AppImages.start,
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
