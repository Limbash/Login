import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common%20widgets/form/form_header_widget.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                const FormHeaderWidget(
                    image: tForgetPasswordImage,
                    title: tForgotPassword,
                    subTitle: tForgetPhoneSubTitle,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    heightBetween: 30.0,
                    textAlign: TextAlign.center),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text(tPhoneNumber),
                            hintText: tPhoneNumber,
                            prefixIcon: Icon(Icons.mobile_friendly_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => const OTPScreen()),
                            child: Text(tNext.toUpperCase())),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
