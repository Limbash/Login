import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                tGoogleLogoImage,
              ),
              width: 30,
            ),
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
          onPressed: () => Get.to(() => const LoginScreen()),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: tAlreadyHaveAnAccount,
                    style: Theme.of(context).textTheme.bodyText1),
                const TextSpan(
                    text: tLogin, style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
