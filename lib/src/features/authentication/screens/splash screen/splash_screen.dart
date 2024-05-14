import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: tPrimaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            60,
                          ),
                          bottomRight: Radius.elliptical(20, 30)),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 80,
                left: splashController.animate.value ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 100 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Image(
                    image: AssetImage(
                      tSplashImage,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: 40,
                right: tDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Container(
                    height: tSplashContainerSize,
                    width: tSplashContainerSize,
                    color: tAccentColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
