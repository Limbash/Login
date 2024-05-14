import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_login_app/src/features/authentication/screens/signup/sign_up_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(tWelcomeScreenImage),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(
                    tWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(
                        tLogin.toUpperCase(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const SignUpScreen()),
                      child: Text(
                        tSignUp.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
